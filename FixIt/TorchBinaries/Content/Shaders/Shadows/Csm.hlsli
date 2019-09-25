#ifndef CSM_CONSTANTS__
#define CSM_CONSTANTS__

#include <Common.hlsli>

SamplerComparisonState	ShadowmapSampler	: register( MERGE(s,SHADOW_SAMPLER_SLOT) );

struct CsmConstants 
{
    matrix 	CascadeMatrix[MAX_SHADOW_CASCADES];
    matrix 	CascadeMatrixExtruded[MAX_SHADOW_CASCADES];
    float4 	SplitDist[MAX_SHADOW_CASCADES / 4];
    float4 	CascadeScale[MAX_SHADOW_CASCADES];
    
    float   ResolutionInv;
    float   ZBias;
    int    CascadeCount;
    uint    ValidCascades;
};

cbuffer CSM : register ( b4 )
{
	CsmConstants csm_;	
}

Texture2DArray<float> CSM : register( MERGE(t,CASCADES_SM_SLOT) );

static const float F_INF = 1e+38;

#ifndef PoissonSamplesNum
static const uint PoissonSamplesNum = 12;
#endif

static const float2 PoissonSamplesArray[] = 
{
    float2(0.130697, -0.209628),
    float2(-0.112312, 0.327448),
    float2(-0.499089, -0.030236),
    float2(0.332994, 0.380106),
    float2(-0.234209, -0.557516),
    float2(0.695785, 0.066096),
    float2(-0.419485, 0.632050),
    float2(0.678688, -0.447710),
    float2(0.333877, 0.807633),
    float2(-0.834613, 0.383171),
    float2(-0.682884, -0.637443),
    float2(0.769794, 0.568801),
    float2(-0.087941, -0.955035),
    float2(-0.947188, -0.166568),
    float2(0.425303, -0.874130),
    float2(-0.134360, 0.982611),
};

static const float2 RandomRotation[] = 
{
    float2(0.971327, 0.237749),
    float2(-0.885968, 0.463746),
    float2(-0.913331, 0.407218),
    float2(0.159352, 0.987222),
    float2(-0.640909, 0.767617),
    float2(-0.625570, 0.780168),
    float2(-0.930406, 0.366530),
    float2(-0.940038, 0.341070),
    float2(0.964899, 0.262621),
    float2(-0.647723, 0.761876),
    float2(0.663773, 0.747934),
    float2(0.929892, 0.367833),
    float2(-0.686272, 0.727345),
    float2(-0.999057, 0.043413),
    float2(-0.710684, 0.703511),
    float2(-0.893640, 0.448784)
};

float3 WorldToShadowmap(float3 worldPosition, matrix shadowMatrix)
{
    float4 shadowmapPosition = mul(float4(worldPosition, 1), shadowMatrix);
    return shadowmapPosition.xyz / shadowmapPosition.w;
}

bool IsValid(int cascadeIndex)
{
    return (csm_.ValidCascades & (1 << cascadeIndex)) > 0;
}

int CalculateCascadeIndexFromSplitInternal(float linear_depth, float3 world_pos)
{
    float4 near = csm_.SplitDist[0];
    float4 far = float4(csm_.SplitDist[0].yzw, csm_.SplitDist[1].x);

    int index = dot((linear_depth >= near) * (linear_depth < far), float4(0, 1, 2, 3));

    near = csm_.SplitDist[1];
    far = float4(csm_.SplitDist[1].yzw, F_INF);

	index = max(index, dot( (linear_depth >= near) * (linear_depth < far), float4(4,5,6,7)) );

    return index;
}

int CalculateCascadeIndexFromSplit(float linear_depth, float3 world_pos, out float3 lpos)
{
    int index = CalculateCascadeIndexFromSplitInternal(linear_depth, world_pos);

    index = max(0, index - 1);

    lpos = WorldToShadowmap(world_pos, csm_.CascadeMatrix[index]);
    if (any(lpos != saturate(lpos)))
    {
        index++;
        lpos = WorldToShadowmap(world_pos, csm_.CascadeMatrix[index]);
    }

    return index;
}

int CalculateCascadeIndexFromSplitAndSkipInvalid(float linear_depth, float3 world_pos, out float3 lpos)
{
    int index = CalculateCascadeIndexFromSplitInternal(linear_depth, world_pos);

    while (index < (csm_.CascadeCount - 1) && !IsValid(index))
        index++;

    lpos = WorldToShadowmap(world_pos, csm_.CascadeMatrix[index]);
    if (any(lpos != saturate(lpos)))
    {
        index++;
        while (index < (csm_.CascadeCount - 1) && !IsValid(index))
            index++;

        lpos = WorldToShadowmap(world_pos, csm_.CascadeMatrix[index]);
    }

    return index;
}

void GetHigherCascadeShadow(float3 worldPosition, inout uint cascadeIndex, inout float3 shadowmapPosition)
{
    if (cascadeIndex > 0)
    {
        uint newCascadeIndex = cascadeIndex - 1;
        if (!IsValid(newCascadeIndex))
            return;

        float3 shadowmapPosition2 = WorldToShadowmap(worldPosition, csm_.CascadeMatrixExtruded[newCascadeIndex]);
        if (!any(shadowmapPosition2 != saturate(shadowmapPosition2)))
        {
            shadowmapPosition2 = saturate(WorldToShadowmap(worldPosition, csm_.CascadeMatrix[newCascadeIndex]));
            float shadow = CSM.SampleCmpLevelZero(ShadowmapSampler, float3(shadowmapPosition2.xy, newCascadeIndex), shadowmapPosition2.z);
            if (shadow == 0)
            {
                cascadeIndex--;
                shadowmapPosition = shadowmapPosition2;
            }
        }
    }
}

float3 ShadowmapToWorld(float2 shadowmapPosition, matrix inverseShadowMatrix)
{
    float4 worldPosition = mul(float4(shadowmapPosition, 0, 1), inverseShadowMatrix);
    return worldPosition.xyz;
}

float2 GetPoissonFilterTexelSize(float distance, uint cascadeIndex)
{
    float texelSize = csm_.ResolutionInv;

    float2 filterSize = csm_.CascadeScale[cascadeIndex].xy;

    float2 filterTexelSize = texelSize * filterSize;
    float2 clamped = max(filterTexelSize, csm_.ResolutionInv);
    return clamped;
}

float SampleShadowCascade(float distance, float3 shadowmapPosition, float3 worldPosition, int cascadeIndex, uint2 rotationOffset = 0, uint samplesNum = PoissonSamplesNum)
{
#ifdef ENABLE_PCF
#ifdef ENABLE_DISTORTION
    float2 theta = RandomRotation[rotationOffset.y * 4 + rotationOffset.x].xy;
    float2x2 rotMatrix = float2x2(float2(theta.xy), float2(-theta.y, theta.x));
#endif

    float2 filterTexelSize = GetPoissonFilterTexelSize(distance, cascadeIndex);
    [branch]
    if (any(filterTexelSize > csm_.ResolutionInv))
    {
        float result = 0;
        [unroll]
        for (uint sampleIndex = 0; sampleIndex < samplesNum; ++sampleIndex)
        {
            float2 offset = filterTexelSize * PoissonSamplesArray[sampleIndex];
#ifdef ENABLE_DISTORTION
            offset = mul(rotMatrix, offset);
#endif
            result += CSM.SampleCmpLevelZero(ShadowmapSampler, float3(shadowmapPosition.xy + offset, cascadeIndex), shadowmapPosition.z);
        }

        return pow(result / samplesNum, 4);
    }
    else
    {
        return CSM.SampleCmpLevelZero(ShadowmapSampler, float3(shadowmapPosition.xy, cascadeIndex), shadowmapPosition.z);
    }
#else
    return CSM.SampleCmpLevelZero(ShadowmapSampler, float3(shadowmapPosition.xy, cascadeIndex), shadowmapPosition.z);
#endif
}

static const float CASCADE_BLEND_THRESHOLD = 0.1f;

float SampleShadow(float distance, float3 shadowmapPosition, float3 worldPosition, int cascadeIndex, uint2 rotationOffset = 0)
{
#ifdef ENABLE_CASCADE_BLEND
    float dist = min(min(min(min(shadowmapPosition.x, shadowmapPosition.y), 1 - shadowmapPosition.x), 1 - shadowmapPosition.y), (1 - shadowmapPosition.z) * 6250 * pow(0.2f, cascadeIndex));
    if (dist < CASCADE_BLEND_THRESHOLD && cascadeIndex < (csm_.CascadeCount - 1))
    {
        float resultNear = SampleShadowCascade(distance, shadowmapPosition, worldPosition, cascadeIndex, rotationOffset, PoissonSamplesNum / 2);

        int cascadeIndexFar = cascadeIndex + 1;
        float3 shadowmapPositionFar = WorldToShadowmap(worldPosition, csm_.CascadeMatrix[cascadeIndexFar]);
        float resultFar = SampleShadowCascade(distance, shadowmapPositionFar, worldPosition, cascadeIndexFar, rotationOffset, PoissonSamplesNum / 2);

        return lerp(resultFar, resultNear, dist / CASCADE_BLEND_THRESHOLD) * 2;
    }
    else
#endif
        return SampleShadowCascade(distance, shadowmapPosition, worldPosition, cascadeIndex, rotationOffset);
}

float SampleShadowFast(float distance, float3 shadowmapPosition, int cascadeIndex)
{
    //shadowmapPosition.z -= csm_.ZBias * distance;
    return CSM.SampleCmpLevelZero(ShadowmapSampler, float3(shadowmapPosition.xy, cascadeIndex), shadowmapPosition.z);
}

float CalculateShadow(float3 world_pos, int filteredCascades)
{
    float3 lpos;
    float distance = length(world_pos);
    int cascadeIndex = CalculateCascadeIndexFromSplitAndSkipInvalid(distance, world_pos, lpos);
    if (cascadeIndex <= filteredCascades)
        return SampleShadow(distance, lpos, world_pos, cascadeIndex);
    else if (cascadeIndex < csm_.CascadeCount)
        return SampleShadowFast(distance, lpos, cascadeIndex);
    else return 1;
}

float CalculateShadowFast(float3 world_pos)
{
    float3 lpos;
    float distance = length(world_pos);
    int cascadeIndex = CalculateCascadeIndexFromSplitAndSkipInvalid(distance, world_pos, lpos);
    if (cascadeIndex < csm_.CascadeCount)
        return SampleShadowFast(distance, lpos, cascadeIndex);
    else return 1;
}

float CalculateShadowFastFromCascade(float3 world_pos, int cascadeIndex)
{
    if (cascadeIndex < csm_.CascadeCount)
    {
        float distance = length(world_pos);
        float3 lpos = WorldToShadowmap(world_pos, csm_.CascadeMatrix[cascadeIndex]);
        return SampleShadowFast(distance, lpos, cascadeIndex);
    }
    else return 1;
}

#endif
