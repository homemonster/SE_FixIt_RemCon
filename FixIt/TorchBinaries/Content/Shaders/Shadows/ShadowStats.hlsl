// @define ENABLE_PCF
// @define ENABLE_DISTORTION
// @define HIGHER_CASCADE_PREFERENCE
// @define PoissonSamplesNum 8
// @define PoissonSamplesNum 12
// @define PoissonSamplesNum 16
// @define SHADOW_THREADING_ALTERNATIVE

#include <Frame.hlsli>
#include <Math/Math.hlsli>
#include "Csm.hlsli"

cbuffer Data : register(MERGE(b, OBJECT_SLOT))
{
    ScreenSettings data_;
};

Texture2D<float>	DepthBuffer	: register(t0);

RWStructuredBuffer<uint> CascadeStats : register(u1);
groupshared uint localCascadeStats[MAX_SHADOW_CASCADES];

void CountShadowmapStat(int2 Texel)
{
    float hwDepth = DepthBuffer[Texel];
    if (!IsDepthForeground(hwDepth))
        return;

	float2 screenUV = (Texel + 0.5f - data_.offset) / data_.resolution;
    float3 worldPosition = ReconstructWorldPosition(hwDepth, screenUV);
    float3 shadowmapPosition;
    float distance = length(worldPosition);
	int cascadeIndex = CalculateCascadeIndexFromSplit(distance, worldPosition, shadowmapPosition);
    if (cascadeIndex >= csm_.CascadeCount)
        return;
	InterlockedAdd(localCascadeStats[cascadeIndex], 1);
}

[numthreads(16, 16, 1)]
void __compute_shader(
	uint3 dispatchThreadID : SV_DispatchThreadID,
	uint3 groupThreadID : SV_GroupThreadID,
	uint3 GroupID : SV_GroupID,
	uint ThreadIndex : SV_GroupIndex)
{
	// clear shared histogram
#ifndef SHADOW_THREADING_ALTERNATIVE
	if (ThreadIndex < MAX_SHADOW_CASCADES)
		localCascadeStats[ThreadIndex] = 0;
	GroupMemoryBarrierWithGroupSync();
#endif

	float2 texel = data_.offset + dispatchThreadID.xy * 2;
    texel.x += 1;
	CountShadowmapStat(texel);

	// shared memory barrier
#ifndef SHADOW_THREADING_ALTERNATIVE
	GroupMemoryBarrierWithGroupSync();

	// copy shared histogram into main histogram
	if (ThreadIndex < MAX_SHADOW_CASCADES)
	{
		InterlockedAdd(CascadeStats[ThreadIndex], localCascadeStats[ThreadIndex]);
	}
#endif
}
