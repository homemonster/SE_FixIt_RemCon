#ifndef ENVAMBIENT_H__
#define ENVAMBIENT_H__

#include "Brdf.hlsli"
#include <Frame.hlsli>

Texture2D<float2> AmbientBRDFTex : register( MERGE(t,AMBIENT_BRDF_LUT_SLOT) );

TextureCube<float4> SkyboxTex : register( MERGE(t,SKYBOX_SLOT) );
TextureCube<float4> SkyboxIBLFarTex : register(MERGE(t,SKYBOX_IBL_FAR_SLOT));
TextureCube<float4> SkyboxIBLCloseTex : register(MERGE(t,SKYBOX_IBL_CLOSE_SLOT));

static const float IBL_MAX_MIPMAP = 8;

float3 GetSunColor(float3 L, float3 V, float3 color, float innerDot, float outerDot)
{
    float lv = saturate(dot(L, -V));
    float dirFactorX = step(innerDot, lv);
    //float smoothing = 1 - (1 - lv) / (1 - innerDot);
    //smoothing *= smoothing;
    return color * dirFactorX;
}

float3 ApplySkyboxOrientation(float3 v)
{
    v = mul(float4(-v, 0.0f), frame_.Environment.background_orientation).xyz;
    // This is because DX9 code does the same (see MyBackgroundCube.cs)
    v.z *= -1;
    return v;
}
float3 SkyboxColor(float3 v)
{
    v = ApplySkyboxOrientation(v);
	float3 sample = SkyboxTex.Sample(TextureSampler, v).xyz;		
	
    return sample;
}

float3 SkyboxColorReflected(float3 v)
{
    v = -ApplySkyboxOrientation(v);
    float3 sample = SkyboxTex.Sample(TextureSampler, v).xyz;

    return sample;
}

float3 SampleIBL(float3 dir, float level, float farFactor)
{
    float3 sampleNear = SkyboxIBLCloseTex.SampleLevel(TextureSampler, dir, level).xyz;
    float3 sampleFar = SkyboxIBLFarTex.SampleLevel(TextureSampler, dir, level).xyz;
    if (farFactor >= 1.0f)
        return sampleFar;
    else if (farFactor <= 0)
        return sampleNear;
    else return lerp(sampleNear, sampleFar, farFactor);
}

float3 AmbientSpecular(float3 f0, float gloss, float3 N, float3 V, float farFactor)
{
	float nv = saturate(dot(N, V));
	float3 R = -reflect(V, N);
	R.x = -R.x;

    uint w, h, levels;
    SkyboxIBLCloseTex.GetDimensions(0, w, h, levels);
    levels -= frame_.Light.SkipIBLevels;
    float level = max((1 - gloss) * levels, 0) + frame_.Light.SkipIBLevels;
    float3 sample = SampleIBL(R, level, farFactor);
    float2 env_brdf = AmbientBRDFTex.Sample(DefaultSampler, float2(gloss, nv));

    return sample * (f0 * env_brdf.x + env_brdf.y);
}

float3 AmbientDiffuse(float3 N, float farFactor)
{
    N.x = -N.x;

    // sample last mipmap
    float3 skybox = SampleIBL(N, 32, farFactor);
    return skybox;
}

float3 AmbientDiffuse(float3 albedo, float3 normal, float farFactor)
{
    return albedo * AmbientDiffuse(normal, farFactor);
}

float4 AmbientDiffuseT(float4 albedo, float3 normal, float farFactor)
{
    return albedo * float4(AmbientDiffuse(normal, farFactor), 1);
}

float GetAmbientFarFactor(float depth)
{
    float factor = saturate(1 - depth / frame_.Light.AmbientFarDistance);
    return 1 - factor * factor;
}

#endif
