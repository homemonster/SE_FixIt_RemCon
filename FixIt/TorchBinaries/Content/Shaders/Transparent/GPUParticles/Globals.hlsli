#include <Frame.hlsli>

#define COLLISION_THICKNESS 2.0

#define EMITTERFLAG_STREAKS 1
#define EMITTERFLAG_COLLIDE 2
#define EMITTERFLAG_SLEEPSTATE 4
#define EMITTERFLAG_DEAD 8
#define EMITTERFLAG_LIGHT 0x10
#define EMITTERFLAG_VOLUMETRICLIGHT 0x20
#define EMITTERFLAG_DONOTSIMULATE 0x80
#define EMITTERFLAG_RANDOM_ROTATION_ENABLED 0x200
#define EMITTERFLAG_LOCALROTATION 0x400
#define EMITTERFLAG_LOCALANDCAMERAROTATION 0x800
#define EMITTERFLAG_USEEMISSIVITYCHANNEL 0x1000
#define EMITTERFLAG_ALPHAANISOTROPY 0x2000

#define MAX_PARTICLE_COLLISIONS 10

// Emitter structure
// ===================

// look @VRageRender.MyGPUEmitterData for description
struct EmittersStructuredBuffer
{
    float4  Colors[4];

    float2  ColorKeys;
    float   AmbientFactor;
    float   Scale;

    float   Intensity[4];

    float2  IntensityKeys;
    float2  AccelerationKeys;
    
    float3  AccelerationVector;
    float   RadiusVar;

    float3  EmitterSize;
    float   EmitterSizeMin;

    float3  Direction;
    float   Velocity;
    
    float   VelocityVariance;
	float   DirectionInnerCone;
	float   DirectionConeVariance;
    float   RotationVelocityVariance;
	
    float   Acceleration[4];

    float3  Gravity;
    float   Bounciness;

    float   ParticleSize[4];

    float2  ParticleSizeKeys;
    uint    NumParticlesToEmitThisFrame;
    float   ParticleLifeSpan;

    float   SoftParticleDistanceScale;
    float   StreakMultiplier;
    uint    Flags;
    // format: 8b atlas texture array index, 6b atlas dimensionX, 6b atlas dimensionY, 12b image index in atlas
    uint    TextureIndex1;
    
    // bits 20..31: image animation modulo
    uint    TextureIndex2;
    // time per frame for animated particle image
    float   AnimationFrameTime;
    float   HueVar;
    float   OITWeightFactor;

    float3x3 RotationMatrix;
    float3  Position;

    float3  PositionDelta;
    float   MotionInheritance;

    float3  Angle;
    float   ParticleLifeSpanVar;

    float3  AngleVar;
    float   RotationVelocity;

    float   ParticleThickness[4];
    float2  ParticleThicknessKeys;

    float2  EmissivityKeys;
    float   Emissivity[4];

    float   RotationVelocityCollisionMultiplier;
    uint    CollisionCountToKill;
    float   DistanceScalingFactor;
    float   ShadowAlphaMultiplier;
};

// Particle structures
// ===================

struct Particle
{
    float3  Position;               // World space position
    float   Variation;              // Random value -1..1

    float3  VelocityDir;               // World space velocity
    float   VelocityLen;              // Random value -1..1
    
    float2  Normal;                 // direction of the emitter, when particle was emitted (axis of light)  - volumetric lighting
    float   Shadow;                 // filtered shadow
    float   Age;                    // The current age counting down from lifespan to zero
    float3  Origin;                 // position of emitter when particle was emitted - volumetric lighting
    uint    Data;                   // 0-15 bits - index of the emitter
                                    // 16-24 bits - collision count
                                    // 30 bit - Normal.z direction is negative?
                                    // 31 bit - just emitted (clears after it exits collision)
};

// Bindings
// ==========

// The opaque scene depth buffer read as a texture
Texture2D<float>      g_DepthTexture                    : register(t0);
Texture2D<float4>     g_GBuffer1Texture                 : register(t2);

// A buffer containing the pre-computed view space positions of the particles
StructuredBuffer<EmittersStructuredBuffer> g_Emitters   : register(t1);

// Global functions
// ====================

// this creates the standard Hessian-normal-form plane equation from three points, 
// except it is simplified for the case where the first point is the origin
float3 CreatePlaneEquation(float3 b, float3 c)
{
    return normalize(cross(b, c));
}

// point-plane distance, simplified for the case where 
// the plane passes through the origin
float GetSignedDistanceFromPlane(float3 p, float3 eqn)
{
    // dot(eqn.xyz, p.xyz) + eqn.w, , except we know eqn.w is zero 
    // (see CreatePlaneEquation above)
    return dot(eqn, p);
}

float Interpolate(float factor, float2 keys, out int index)
{
    float step = saturate(factor / keys.x) +
        saturate((factor - keys.x) / (keys.y - keys.x)) +
        saturate((factor - keys.y) / (1.0 - keys.y));
    index = trunc(step);
    return frac(step);
}

#define ATLAS_INDEX_BITS 12
#define ATLAS_DIMENSION_BITS 6
#define ATLAS_TEXTURE_BITS 8
float3 UnpackUV(float2 offset, uint textureIndex1, uint textureIndex2, float lifeSpan, float age, float frameTime)
{
    float3 uvw;
    uint imgOffset = textureIndex1 & ((1 << ATLAS_INDEX_BITS) - 1);
    textureIndex1 >>= ATLAS_INDEX_BITS;
    uint dimY = textureIndex1 & ((1 << ATLAS_DIMENSION_BITS) - 1);
    textureIndex1 >>= ATLAS_DIMENSION_BITS;
    uint dimX = textureIndex1 & ((1 << ATLAS_DIMENSION_BITS) - 1);
    textureIndex1 >>= ATLAS_DIMENSION_BITS;
    uint texIndex = textureIndex1 & ((1 << ATLAS_TEXTURE_BITS) - 1);

    uint frameModulo = textureIndex2 & ((1 << ATLAS_INDEX_BITS) - 1);
    uint animImageIndex = (lifeSpan - age) / frameTime;
    uint animImageOffset = animImageIndex % frameModulo;
    imgOffset += animImageOffset;

    float2 uvOffset = (offset + 1) / 2;
    uvw.x = float(imgOffset % dimX) / dimX + uvOffset.x / dimX;
    uvw.y = float(imgOffset / dimX) / dimY + uvOffset.y / dimY;
    uvw.z = texIndex;

    return uvw;
}

uint GetCollisionCount(uint data)
{
    return (data >> 16) & 0xff;
}

float GetRotationVelocity(EmittersStructuredBuffer emitter, Particle pa)
{
    float v = emitter.RotationVelocity + emitter.RotationVelocityVariance * pa.Variation;
    return v * pow(abs(emitter.RotationVelocityCollisionMultiplier), GetCollisionCount(pa.Data));
}

float GetLifetime(EmittersStructuredBuffer emitter, Particle pa)
{
    return max(emitter.ParticleLifeSpan + pa.Variation * emitter.ParticleLifeSpanVar, 0);
}

float GetLifetimeFactor(EmittersStructuredBuffer emitter, Particle pa)
{
    return 1.0 - saturate(pa.Age / GetLifetime(emitter, pa));
}

uint EncodeData(uint emitterIndex, uint collisionCount)
{
    return (emitterIndex & 0xffff) | (collisionCount << 16);
}

uint GetEmitterIndex(uint data)
{
    return (data & 0xffff);
}

void IncrementCollisionCount(in out uint data)
{
    data += 0x10000;
}
bool IsFreshlyEmitted(uint data)
{
    return (data & 0x80000000) == 0;
}

void ClearFreshlyEmitted(in out uint data)
{
    data |= 0x80000000;
}

void SetNormal(in out Particle pa, float3 normal)
{
    pa.Normal = normal.xy;
    if (normal.z < 0)
        pa.Data |= 0x40000000;
    else pa.Data &= ~0x40000000;
}

float3 GetNormal(Particle pa)
{
    float3 normal = float3(pa.Normal, sqrt(saturate(1 - dot(pa.Normal, pa.Normal))));
    if (pa.Data & 0x40000000)
        normal.z = -normal.z;
    return normal;
}

float GetRadius(float lifetimeFactor, Particle pa, EmittersStructuredBuffer emitter)
{
    int keyIndex;
    float keyFactor = Interpolate(lifetimeFactor, emitter.ParticleSizeKeys, keyIndex);
    return lerp(emitter.ParticleSize[keyIndex], emitter.ParticleSize[keyIndex + 1], keyFactor) * emitter.Scale * (1 + emitter.RadiusVar * pa.Variation);
}

float3x3 CreateFromAxisAngle(float3 axis, float angle)
{
    float num1 = axis.x;
    float num2 = axis.y;
    float num3 = axis.z;
    float num4 = sin(angle);
    float num5 = cos(angle);
    float num6 = num1 * num1;
    float num7 = num2 * num2;
    float num8 = num3 * num3;
    float num9 = num1 * num2;
    float num10 = num1 * num3;
    float num11 = num2 * num3;
    float3x3 m;
    m._11 = num6 + num5 * (1 - num6);
    m._12 = (num9 - num5 * num9 + num4 * num3);
    m._13 = (num10 - num5 * num10 - num4 * num2);
    m._21 = (num9 - num5 * num9 - num4 * num3);
    m._22 = num7 + num5 * (1 - num7);
    m._23 = (num11 - num5 * num11 + num4 * num1);
    m._31 = (num10 - num5 * num10 + num4 * num2);
    m._32 = (num11 - num5 * num11 - num4 * num1);
    m._33 = num8 + num5 * (1 - num8);
    return m;
}
