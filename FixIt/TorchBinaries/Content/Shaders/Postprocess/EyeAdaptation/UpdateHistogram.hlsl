// @define NUMTHREADS 8
// @define PRIORITIZE_SCREEN_CENTER

#define THREAD_GROUP_X 16
#define THREAD_GROUP_Y 16
#define HISTOGRAM_BIN_COUNT 64

Texture2D<float4> Source : register(t0);
Texture2D<float> Depth : register(t1);
RWStructuredBuffer<uint> Histogram : register(u0);

groupshared uint localHistogram[HISTOGRAM_BIN_COUNT];

#include "Defines.hlsli"
#include <Math/Color.hlsli>

//-------------------------------------------------------------------------------------------------
void UpdateLocalHistogram(float luminance, uint weight)
{
	float logLuminance = log2(luminance);

	// 0 to 1 range
	float relativeBin = saturate(logLuminance * HistogramScaleOffset.x + HistogramScaleOffset.y);
	// 0 to HISTOGRAM_BINS-1 range
	float binIndex = relativeBin * (HISTOGRAM_BIN_COUNT - 1);

	InterlockedAdd(localHistogram[(uint)binIndex], weight);
}

//-------------------------------------------------------------------------------------------------
[numthreads(THREAD_GROUP_X, THREAD_GROUP_Y, 1)]
void __compute_shader(uint2 dispatchId : SV_DispatchThreadID, uint3 groupThreadId : SV_GroupThreadID, uint groupThreadIndex : SV_GroupIndex)
{
	// clear shared histogram
	if (groupThreadIndex < HISTOGRAM_BIN_COUNT)
		localHistogram[groupThreadIndex] = 0;

	// shared memory barrier
	GroupMemoryBarrierWithGroupSync();

	uint sourceWidth, sourceHeight;
	Source.GetDimensions(sourceWidth, sourceHeight);

	if (dispatchId.x < sourceWidth && dispatchId.y < sourceHeight)
	{
        float depth = Depth[dispatchId * 2].r;
	    float depthWeight = depth > 0 ? 1.0f : HistogramSkyboxFactor;
		float3 color = Source[dispatchId].xyz;

		float luminance = GetRelativeLuminance(color);

		uint weight = 1;
#ifdef PRIORITIZE_SCREEN_CENTER
		// compute pixel weight based on its position on screen
		float2 uv = dispatchId / float2(sourceWidth, sourceHeight);
		uv = abs(uv - 0.5);
		float pixelWeight = (1.0 - dot(uv, uv));
		pixelWeight = pixelWeight * pixelWeight;
		// can't use float, 100 is max weight and zero is min weight
		weight = (uint)(pixelWeight * 100);
#endif

        weight *= depthWeight;

		UpdateLocalHistogram(luminance, weight);
	}

	// shared memory barrier
	GroupMemoryBarrierWithGroupSync();

	// copy shared histogram into main histogram
	if (groupThreadIndex < HISTOGRAM_BIN_COUNT)
	{
		InterlockedAdd(Histogram[groupThreadIndex], localHistogram[groupThreadIndex]);
	}
}