#include "Globals.hlsli"
#include "Simulation.hlsli"
#include <Shadows/Csm.hlsli>

// Particle buffer in two parts
RWStructuredBuffer<Particle>               g_ParticleBuffer          : register(u0);

// The dead list, so any particles that are retired this frame can be added to this list
AppendStructuredBuffer<uint>               g_DeadListToAddTo         : register(u1);

// The alive list which gets built using this shader
RWStructuredBuffer<float>                  g_OutputIndexBuffer       : register(u2);

// The list of already alive particles
RWStructuredBuffer<float>                  g_InputIndexBuffer        : register(u4);

// The draw args for the DrawInstancedIndirect call needs to be filled in before the rasterization path is called, so do it here
RWBuffer<uint>                             g_DrawArgs                : register(u3);

// Simulate 256 particles per thread group, one thread per particle
[numthreads(256,1,1)]
void __compute_shader(uint3 id : SV_DispatchThreadID)
{
    // Initialize the draw args using the first thread in the Dispatch call
    if (id.x == 0)
    {
        g_DrawArgs[ 0 ] = 0;    // Number of primitives reset to zero
        g_DrawArgs[ 1 ] = 1;    // Number of instances is always 1
        g_DrawArgs[ 2 ] = 0;
        g_DrawArgs[ 3 ] = 0;
        g_DrawArgs[ 4 ] = 0;
    }

    // Wait after draw args are written so no other threads can write to them before they are initialized
    GroupMemoryBarrierWithGroupSync();

    // Fetch the particle from the global buffer
    int counter = g_InputIndexBuffer.DecrementCounter();
    if (counter < 0)
        return;
    int particleIndex = g_InputIndexBuffer[counter];

    Particle pa = g_ParticleBuffer[particleIndex];

    // If the partile is alive
    if (pa.Age > 0.0f)
    {    
        pa.Position -= frame_.Environment.cameraPositionDelta;
        pa.Origin -= frame_.Environment.cameraPositionDelta;

        float lifetimeFactor = Simulate(pa, frame_.frameTimeDelta);

        EmittersStructuredBuffer emitter = g_Emitters[GetEmitterIndex(pa.Data)];

        // shadowing
        if (emitter.Flags & (EMITTERFLAG_LIGHT | EMITTERFLAG_VOLUMETRICLIGHT))
        {
            float newShadow = CalculateShadowFast(pa.Position);
            float currentShadow = pa.Shadow;
            if (newShadow != currentShadow)
            {
                float radius = GetRadius(lifetimeFactor, pa, emitter);
                float dir = newShadow > currentShadow ? 1 : -1;
                float timeMultiplier = 2 / clamp(radius, 0.1f, 1.0f);
                currentShadow += frame_.frameTimeDelta * timeMultiplier * dir;
                float dir2 = newShadow > currentShadow ? 1 : -1;
                if (dir != dir2)
                    currentShadow = newShadow;
		        pa.Shadow = currentShadow;
            }
        }

        bool killParticle = (emitter.Flags & EMITTERFLAG_DEAD) > 0 ||
            (emitter.CollisionCountToKill > 0 && (emitter.Flags & EMITTERFLAG_SLEEPSTATE) == 0 && GetCollisionCount(pa.Data) >= emitter.CollisionCountToKill);
        
        // Dead particles are added to the dead list for recycling
        if (killParticle || pa.Age <= 0.0f)
        {
            pa.Age = -1;
            g_DeadListToAddTo.Append(particleIndex);
        }
        else
        {
            // Alive particles are added to the alive list
            uint index = g_OutputIndexBuffer.IncrementCounter();
            g_OutputIndexBuffer[ index ] = (float)particleIndex;
            
            uint dstIdx = 0;
            // VS only path uses 6 indices per particle billboard
            InterlockedAdd(g_DrawArgs[ 0 ], 6, dstIdx);
        }

        // Write the particle data back to the global particle buffer
        g_ParticleBuffer[ particleIndex ] = pa;
    }
    else
    {
        g_DeadListToAddTo.Append(particleIndex);
    }
}
