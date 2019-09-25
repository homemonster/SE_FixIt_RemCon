//
//    Shader code for rendering particles as simple quads using rasterization
//

// @defineMandatory STREAKS
// @defineMandatory LIT_PARTICLE
// @define OIT
// @define DEBUG_UNIFORM_ACCUM
// @define DEBUG_SHADOWS

#include "Globals.hlsli"
#include <Transparent/OIT/Globals.hlsli>
#include <Shadows/Csm.hlsli>
#include <Lighting/EnvAmbient.hlsli>
#include <Math/Color.hlsli>

struct PS_INPUT
{
    float4    Position                    : SV_POSITION;
    float3    TexCoord                    : TEXCOORD0;
    float4    Extras                      : TEXCOORD1; // X: OIT weight, Y: soft particle factor, Z: emissivity, W: use emissivity channel bool
    float4    Color                       : COLOR0;
    float4    Light                       : COLOR1;
    float     Intensity                   : TEXCOORD2;
};

// The particle buffer data. Note this is only one half of the particle data - the data that is relevant to rendering as opposed to simulation
StructuredBuffer<Particle>                 g_ParticleBuffer          : register(t0);

// The sorted index list of particles
StructuredBuffer<float>                    g_AliveIndexBuffer        : register(t2);

// The number of alive particles this frame
cbuffer ActiveListCount : register(b1)
{
    uint    g_NumActiveParticles;
    uint3   ActiveListCount_pad;
};

// Vertex shader only path
PS_INPUT __vertex_shader(uint VertexId : SV_VertexID)
{
    PS_INPUT Output = (PS_INPUT)0;

    // Particle index 
    uint particleIndex = VertexId / 4;

    // Per-particle corner index
    uint cornerIndex = VertexId % 4;

    float xOffset = 0;
    
    const float2 offsets[ 4 ] =
    {
        float2(-1, 1),
        float2(1, 1),
        float2(-1, -1),
        float2(1, -1),
    };

    uint index = (uint)g_AliveIndexBuffer[g_NumActiveParticles - particleIndex - 1];
    Particle pa = g_ParticleBuffer[index];

    EmittersStructuredBuffer emitter = g_Emitters[GetEmitterIndex(pa.Data)];
    float lifetimeFactor = GetLifetimeFactor(emitter, pa);

    float distance = length(pa.Position);
    float3 cameraVector = pa.Position / distance;

    // PARTICLE RADIUS
    int keyIndex;
    float keyFactor;
    float radius = GetRadius(lifetimeFactor, pa, emitter) * (distance * emitter.DistanceScalingFactor + 1);

    // UV
    float2 offset = offsets[cornerIndex];
    float3 uv = UnpackUV(offset, emitter.TextureIndex1, emitter.TextureIndex2, GetLifetime(emitter, pa), pa.Age, emitter.AnimationFrameTime);

    // VERTEX POSITION / BILLBOARDING + STREAKS
    float alphaAnisotropy = 1.0f;
    float3 wPos;
    float4 pPos;
#if defined (STREAKS)
    if (emitter.Flags & EMITTERFLAG_STREAKS)
    {
        float3 vsVelocity = pa.VelocityDir * pa.VelocityLen * emitter.StreakMultiplier / 2;
        float velocityLen = length(vsVelocity);
        float3 extrusionVector = vsVelocity / velocityLen;
        float3 tangentVector = normalize(cross(cameraVector, extrusionVector));
        float3 cornerPos = pa.Position + velocityLen * radius * (offset.y + 1) * extrusionVector + radius * offset.x * tangentVector;
        wPos = mul(float4(cornerPos, 1), frame_.Environment.view_matrix).xyz;
        pPos = mul(float4(cornerPos, 1), frame_.Environment.view_projection_matrix);
    }
    else
#endif
    {
        // PARTICLE THICKNESS
        keyFactor = Interpolate(lifetimeFactor, emitter.ParticleThicknessKeys, keyIndex);
		float thickness = lerp(emitter.ParticleThickness[keyIndex], emitter.ParticleThickness[keyIndex + 1], keyFactor);

        float s, c;
        float rotationVelocity = GetRotationVelocity(emitter, pa);
        sincos(lifetimeFactor * rotationVelocity + ((emitter.Flags & EMITTERFLAG_RANDOM_ROTATION_ENABLED) != 0 ? 
            M_PI * pa.Variation : 0), s, c);
        float2x2 rotation = { float2(c, -s), float2(s, c) };

        offset *= float2(radius, radius * thickness);

        offset = mul(offset, rotation);
        
        float2 localVertex = offset;

        float3x3 bbm;
        if (emitter.Flags & (EMITTERFLAG_LOCALROTATION | EMITTERFLAG_LOCALANDCAMERAROTATION))
        {
            float3 angle = emitter.Angle + emitter.AngleVar * pa.Variation;
            float3x3 rotMat = mul(mul(CreateFromAxisAngle(emitter.RotationMatrix._11_12_13, angle.x),
                CreateFromAxisAngle(emitter.RotationMatrix._21_22_23, angle.y)),
                CreateFromAxisAngle(-emitter.RotationMatrix._31_32_33, angle.z));

            bbm = mul(emitter.RotationMatrix, rotMat);
            if (emitter.Flags & EMITTERFLAG_ALPHAANISOTROPY)
            {
                //float3 normal = mul(float3(0, 0, 1), bbm);
                float3 normal = bbm._31_32_33;
                float angle = abs(dot(cameraVector, normal)) * 2;
                angle *= angle;
                angle *= angle;
                alphaAnisotropy = min(angle, 1.0f);
            }
        }
        else
        {
            // individual billboarding
            float3 look = -cameraVector;
            float3 upCamera = frame_.Environment.view_matrix._12_22_32;
            float3 right = cross(upCamera, look);
            float3 up = cross(look, right);
            bbm = float3x3(right, up, look);
        }
        wPos = mul(float3(localVertex, 0), bbm) + pa.Position;
        pPos = mul(float4(wPos, 1), frame_.Environment.view_projection_matrix);

        // collective billboarding
        //float3 cameraFacingPos = mul(float4(pa.Position, 1), frame_.Environment.view_matrix).xyz;
        //cameraFacingPos.xy += radius * offset;
        //wPos = mul(float4(cameraFacingPos, 1), frame_.Environment.inv_view_matrix).xyz;
        //pPos = mul(float4(cameraFacingPos, 1), frame_.Environment.projection_matrix);
    }

    // COLOR / OPACITY
    keyFactor = Interpolate(lifetimeFactor, emitter.ColorKeys, keyIndex);
    float4 color1 = emitter.Colors[keyIndex];
    float4 color2 = emitter.Colors[keyIndex + 1];
    float4 colorInterpolated = lerp(color1, color2, keyFactor);
    colorInterpolated *= alphaAnisotropy;

    keyFactor = Interpolate(lifetimeFactor, emitter.IntensityKeys, keyIndex);
    float intensity1 = emitter.Intensity[keyIndex];
    float intensity2 = emitter.Intensity[keyIndex + 1];
    float intensityInterpolated = lerp(intensity1, intensity2, keyFactor);
    // hue variation is not working properly
    if (colorInterpolated.a > 0 && emitter.HueVar > 0)
    {
        float3 rgb = colorInterpolated.rgb / colorInterpolated.a;
        float3 colorHSV = rgb_to_hsv(rgb);
        colorHSV.r = saturate(colorHSV.r + emitter.HueVar * pa.Variation);
        colorInterpolated.rgb = hsv_to_rgb(colorHSV) * colorInterpolated.a;
    }
	Output.Color = colorInterpolated;
    //Output.Extras.w = emitter.Flags & EMITTERFLAG_USEEMISSIVITYCHANNEL;
    Output.Light = 1;
	Output.Intensity = intensityInterpolated;
    
    // emissivity
    keyFactor = Interpolate(lifetimeFactor, emitter.EmissivityKeys, keyIndex);
	Output.Extras.z = lerp(emitter.Emissivity[keyIndex], emitter.Emissivity[keyIndex + 1], keyFactor);

    // LIGHTING
#ifdef LIT_PARTICLE
#ifdef DEBUG_SHADOWS
	if (emitter.Flags & (EMITTERFLAG_LIGHT | EMITTERFLAG_VOLUMETRICLIGHT))
    {
        float3 lPos;
        uint cascadeIndex = CalculateCascadeIndexFromSplit(distance, pa.Position, lPos);
    	Output.Color = float4(CASCADE_DEBUG_COLORS[cascadeIndex], 1);
    }
#else
	if (emitter.Flags & (EMITTERFLAG_LIGHT | EMITTERFLAG_VOLUMETRICLIGHT))
    {
        // shadow
		float shadow = pa.Shadow;
        // volumetric light
        float3 dirLight = frame_.Light.directionalLightColor;
        if (emitter.Flags & EMITTERFLAG_VOLUMETRICLIGHT)
        {
            float3 lv = -frame_.Light.directionalLightVec;
            float3 lightAxis = GetNormal(pa);
            // axis between emitter direction and light vector
            float3 axis = normalize(cross(lightAxis, lv));
            // rotate lv 90 degrees clockwise by axis = we will get the plane normal perpendicular to emitter direction (lightAxis) and pointing towards the sun
            float3 planeNormal = cross(axis, lightAxis) + axis * dot(axis, lightAxis);
            float4 plane = float4(planeNormal, -dot(planeNormal, pa.Origin));
            float d = saturate(dot(plane, float4(wPos, 1)));
            dirLight *= d;
        }

        // ambient
        float3 ambientLight = AmbientDiffuse(-normalize(wPos), -1) * emitter.AmbientFactor;

        // accentuate alpha in shadow
        float alpha = lerp(emitter.ShadowAlphaMultiplier, 1, shadow);
        float4 light = float4(shadow * dirLight + ambientLight, alpha);
        Output.Light = light;
    }
#endif
#endif
    
    // OUTPUT TO PS
    Output.Position = pPos;
    Output.TexCoord = uv;
    Output.Extras.x = emitter.OITWeightFactor;
    Output.Extras.y = emitter.SoftParticleDistanceScale;

    return Output;
}

// The texture atlas for the particles
Texture2DArray<float4> g_ParticleTextureArray            : register(t1);
Texture2DArray<float>  g_EmissiveTextureArray            : register(t3);

// Ratserization path's pixel shader
void __pixel_shader(PS_INPUT In, out float4 accumTarget : SV_TARGET0, out float4 coverageTarget : SV_TARGET1)
{
    // SOFT PARTICLES
    float depth = g_DepthTexture[In.Position.xy].r;
    float targetDepth = linearize_depth(depth, frame_.Environment.projection_matrix);
    float particleDepth = linearize_depth(In.Position.z, frame_.Environment.projection_matrix);
    float depthFade = CalcSoftParticle(In.Extras.y, targetDepth, particleDepth);

    // COLOR & LIGHT
    float4 sample = g_ParticleTextureArray.Sample(DefaultSampler, In.TexCoord);    // 2d
    float4 albedo = sample * In.Color * depthFade;
    float4 outColor;
    /*if (In.Extras.w > 0)
    {
        float emissivity = g_EmissiveTextureArray.Sample(DefaultSampler, In.TexCoord);    // 2d

        // Multiply in the particle color
        outColor = albedo * float4(In.Intensity.xxx, 1) * lerp(In.Light, float4(In.Extras.zzz, 1), emissivity);
    }
    else */
    {
        // emissivity
        outColor = albedo * float4(In.Extras.zzz, 0);
        outColor += albedo * float4(In.Intensity.xxx, 1) * In.Light;
    }
        
    TransparentColorOutput(outColor, particleDepth, In.Position.z, In.Extras.x, accumTarget, coverageTarget);
}
