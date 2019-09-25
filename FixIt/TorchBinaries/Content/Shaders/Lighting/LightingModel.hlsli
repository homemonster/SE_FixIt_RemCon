#ifndef LIGHTING_MODEL_H__
#define LIGHTING_MODEL_H__

#include <Frame.hlsli>
#include <GBuffer/Surface.hlsli>
#include <Math/Color.hlsli>
#include "Brdf.hlsli"

float GetAttenuationHard(float distance, float range)
{
    float d = distance / range;
    float dq = d * d;
    float dq1 = 1.0 - dq * dq;
    return dq1 * dq1;
}

float2 GetAttenuation(float distance, float range, float fallOff)
{
    // att=POW(1-POW(d,4),2)/(1+d*d)
    float d = distance / range;
    float dq = d * d;
    float dq1 = 1.0 - dq * dq;
    float attenuationHard = dq1 * dq1 * dq1;
    float attenuationDiffuse = 1 / (1 + fallOff * dq);
    return float2(attenuationHard, attenuationDiffuse);
}

float3 CalculateLight(SurfaceInterface surface, float3 lightVector, float3 lightColor, float3 lightSpecularColor, float gFactor, float dFactor, float sFactor = 1)
{
	float3 N = surface.N;
	float3 V = surface.V;
	float3 H = normalize(V + lightVector);

    float3 lightRadiance = lightColor * MaterialRadiance(surface.albedo, lightSpecularColor, surface.f0, surface.gloss * gFactor, N, lightVector, V, H, dFactor, sFactor);
	return lightRadiance;
}

float3 MainDirectionalLight(SurfaceInterface surface)
{
    return CalculateLight(surface, -frame_.Light.directionalLightVec, frame_.Light.directionalLightColor, frame_.Light.directionalLightSpecularColor,
        frame_.Light.directionalLightGlossFactor, frame_.Light.directionalLightDiffuseFactor, frame_.Light.directionalLightSpecularFactor);
}

float4 CalculateLightT(float4 albedo, float gloss, float3 N, float3 V, float3 lightVector, float3 lightColor, float4 lightSpecularColor,
    float gFactor, float dFactor, float sFactor = 1)
{
    float3 H = normalize(V + lightVector);

    float4 radiance = MaterialRadianceT(albedo, lightSpecularColor, DIELECTRIC_F0, gloss * gFactor, N, lightVector, V, H, dFactor, sFactor);
    float4 lightRadiance = float4(lightColor * radiance.rgb, radiance.a);
	return lightRadiance;
}

float4 MainDirectionalLightT(float4 albedo, float4 reflection, float gloss, float3 N, float3 V)
{
    return CalculateLightT(albedo, gloss, N, V, -frame_.Light.directionalLightVec, frame_.Light.directionalLightColor, float4(frame_.Light.directionalLightSpecularColor, 1) * reflection,
        frame_.Light.directionalLightGlossFactor, frame_.Light.directionalLightDiffuseFactor, frame_.Light.directionalLightSpecularFactor);
}

float3 MainDirectionalLightEnv(SurfaceInterface surface, float intensity)
{
    float ln = saturate(dot(-frame_.Light.directionalLightVec, surface.N));
    float3 lambert = surface.albedo / M_PI * ln;
    return lambert * frame_.Light.directionalLightDiffuseFactor * frame_.Light.directionalLightColor * intensity;
}

// scattering

float FogUniform(float dist, float density) 
{
	return 1 - exp(-dist * density);
}

float3 Fog(float3 color, float dist)
{
	dist = clamp(dist, 0, 1000);
	float c = frame_.Fog.mult;
	float b = frame_.Fog.density;

    float fog0 = c * FogUniform(dist, b);

    return lerp(color, frame_.Fog.color, fog0);
}

#endif