// @define ENABLE_PCF
// @define ENABLE_CASCADE_BLEND
// @define ENABLE_DISTORTION
// @define HIGHER_CASCADE_PREFERENCE
// @define PoissonSamplesNum 8
// @define PoissonSamplesNum 12
// @define PoissonSamplesNum 16

#include <Frame.hlsli>
#include <Math/Math.hlsli>
#include "Csm.hlsli"

Texture2D<float>	DepthBuffer	: register(t0);

RWTexture2D<unorm float> Output : register(u0);

float GetShadowmapValue(int2 Texel, uint2 rotationOffset)
{
    float hwDepth = DepthBuffer[Texel];
    if (!IsDepthForeground(hwDepth))
        return 1;

	float2 screenUV = (Texel + 0.5f - frame_.Screen.offset) / frame_.Screen.resolution;
    float3 worldPosition = ReconstructWorldPosition(hwDepth, screenUV);
    worldPosition *= 1 - csm_.ZBias;
    float3 shadowmapPosition;
    float distance = length(worldPosition);
	int cascadeIndex = CalculateCascadeIndexFromSplit(distance, worldPosition, shadowmapPosition);
    if (cascadeIndex >= csm_.CascadeCount)
        return 1;

#ifdef HIGHER_CASCADE_PREFERENCE
    GetHigherCascadeShadow(worldPosition, cascadeIndex, shadowmapPosition);
#endif

    return SampleShadow(distance, shadowmapPosition, worldPosition, cascadeIndex, rotationOffset);
}

[numthreads(16, 16, 1)]
void __compute_shader(
	uint3 dispatchThreadID : SV_DispatchThreadID,
	uint3 groupThreadID : SV_GroupThreadID,
	uint3 GroupID : SV_GroupID,
	uint ThreadIndex : SV_GroupIndex)
{
	float2 texel = frame_.Screen.offset + dispatchThreadID.xy;
	Output[texel] = GetShadowmapValue(texel, dispatchThreadID.xy % 4);
}
