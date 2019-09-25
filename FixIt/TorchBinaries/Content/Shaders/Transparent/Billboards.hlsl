// @define LIT_PARTICLE
// @define ALPHA_CUTOUT
// @define SOFT_PARTICLE
// @define DEBUG_UNIFORM_ACCUM
// @define OIT
// @define SINGLE_CHANNEL

#include <Math/Color.hlsli>
#include <Shadows/Csm.hlsli>
#include <Lighting/EnvAmbient.hlsli>
#include <Transparent/OIT/Globals.hlsli>
#include <Common.hlsli>
#include <Frame.hlsli>


#define REFLECTIVE
#define BILLBOARD_BUFFER_SLOT 30

struct VsIn
{
	float3 position : POSITION;
	float2 texcoord : TEXCOORD0;
};

struct VsOut
{
    float4 position : SV_Position;
    float2 texcoord : Texcoord0;
    uint   index : Texcoord1;
    float3 wposition : TEXCOORD2;
#if defined(LIT_PARTICLE)
    float3 light : Texcoord3;
#endif
};

struct BillboardData
{
	float4 Color;

	int custom_projection_id;
	float reflective;
	float AlphaSaturation;
	float AlphaCutout;

	float3 normal;
	float SoftParticleDistanceScale;
};

cbuffer CustomProjections : register (b2)
{
	matrix view_projection[32];
};

StructuredBuffer<BillboardData> BillboardBuffer : register(MERGE(t, BILLBOARD_BUFFER_SLOT));
Texture2D<float4> TextureAtlas : register(t0);
Texture2D<float> Depth : register(t1);

Texture2D<float2> AvgLuminance : register( t2 );

void CalculateVertexPosition(VsIn vertex, uint vertex_id, out float4 projPos, out uint billboard_index)
{
	billboard_index = vertex_id / 4;

	int custom_id = BillboardBuffer[billboard_index].custom_projection_id;
	if (custom_id < 0)
		projPos = mul(float4(vertex.position.xyz, 1), frame_.Environment.view_projection_matrix);
	else
		projPos = mul(float4(vertex.position.xyz, 1), view_projection[custom_id]);
}


VsOut __vertex_shader(VsIn vertex, uint vertex_id : SV_VertexID)
{
    float4 projPos;
    uint billboard_index;
    CalculateVertexPosition(vertex, vertex_id, projPos, billboard_index);

    VsOut result;
    result.position = projPos;
    result.texcoord = vertex.texcoord;
    result.index = billboard_index;
    result.wposition = vertex.position.xyz;
#ifdef LIT_PARTICLE
    //float3 vs_pos = mul(float4(vertex.position.xyz, 1), frame_.Environment.view_matrix).xyz;
	float3 V = normalize(get_camera_position() - vertex.position.xyz);
	result.light = CalculateShadowFast(vertex.position.xyz) + AmbientDiffuse(V, -1.0f) * frame_.Light.ambientDiffuseFactor;
#endif
    
	return result;
}

#pragma warning( disable : 3571 )

float4 SaturateAlpha(float4 color, float alphaSaturation)
{
    if ( alphaSaturation > 0 )
    {
        float invSat = 1 - alphaSaturation;
        float alphaSaturate = clamp(color.a - invSat, 0, 1);
        color += float4(1, 1, 1, 1) * float4(alphaSaturate.xxx, 0) * color.a;
    }
    return color;
}

float4 CalculateColor(VsOut input, float particleDepth, bool minTexture, float alphaCutout)
{
#ifdef SOFT_PARTICLE
    float depth = Depth[input.position.xy].r;
    float targetDepth = linearize_depth(depth, frame_.Environment.projection_matrix);
    float softParticleFade = CalcSoftParticle(BillboardBuffer[input.index].SoftParticleDistanceScale, targetDepth, particleDepth);
#else
    float softParticleFade = 1.0f;
#endif

	float4 billboardColor = BillboardBuffer[input.index].Color;

    float4 resultColor = float4(1, 1, 1, 1);

    if ( minTexture )
    {
        resultColor *= billboardColor;
        resultColor *= softParticleFade;
    }
    else
    {
#ifdef SINGLE_CHANNEL
        float4 textureSample = TextureAtlas.Sample(LinearSampler, input.texcoord.xy).xxxx;
#else
        float4 textureSample = TextureAtlas.Sample(LinearSampler, input.texcoord.xy);
#endif
        //float alpha = textureSample.x * textureSample.y * textureSample.z;

        resultColor *= textureSample * billboardColor;
        //resultColor += 100*BillboardBuffer[input.index].Emissivity*resultColor; TODO
        //resultColor = SaturateAlpha(resultColor, 0);//BillboardBuffer[input.index].AlphaSaturation); //uncomment for hotspots on lights/thruster flames
        
#ifdef ALPHA_CUTOUT
		float cutout = step(alphaCutout, resultColor.w);
		resultColor = float4(cutout * resultColor.xyz, cutout);
		//resultColor = float4(resultColor.w, resultColor.w, resultColor.w, 1);
#endif

		resultColor *= softParticleFade;
    }
	return resultColor;
}

#ifdef OIT
void __pixel_shader(VsOut vertex, out float4 accumTarget : SV_TARGET0, out float4 coverageTarget : SV_TARGET1)
#else
void __pixel_shader(VsOut vertex, out float4 accumTarget : SV_TARGET0)
#endif
{
	float4 resultColor = float4(1, 1, 1, 1);

#ifdef ALPHA_CUTOUT
	float alphaCutout = BillboardBuffer[vertex.index].AlphaCutout; 
#else
	float alphaCutout = 0;
#endif

	float linearDepth = linearize_depth(vertex.position.z, frame_.Environment.projection_matrix);

#ifdef REFLECTIVE
    float reflective = BillboardBuffer[vertex.index].reflective;
    if ( reflective )
    {
		float3 N = normalize(BillboardBuffer[vertex.index].normal);
		float3 viewVector = normalize(get_camera_position() - vertex.wposition);

		float3 reflectionSample = AmbientSpecular(0.04f, 0.95f, N, viewVector, -1);
		float4 color = CalculateColor(vertex, linearDepth, true, alphaCutout);
        color.xyz *= color.w;
        float3 reflectionColor = lerp(color.xyz*color.w, reflectionSample, reflective);

        float4 dirtSample = TextureAtlas.Sample(LinearSampler, vertex.texcoord.xy);
        float3 colorAndDirt = lerp(reflectionColor, dirtSample.xyz, dirtSample.w);

        resultColor = float4(colorAndDirt, max(max(color.w, reflective), dirtSample.w));
    }
    else
#endif
    {
		resultColor = CalculateColor(vertex, linearDepth, false, alphaCutout);
#ifdef LIT_PARTICLE
        resultColor.xyz *= vertex.light;
#endif
    }

#ifdef OIT
	TransparentColorOutput(resultColor, linearDepth, vertex.position.z, 1.0f, accumTarget, coverageTarget);
#else
    float4 coverageTarget;
	TransparentColorOutput(resultColor, linearDepth, vertex.position.z, 1.0f, accumTarget, coverageTarget);
#endif
}
