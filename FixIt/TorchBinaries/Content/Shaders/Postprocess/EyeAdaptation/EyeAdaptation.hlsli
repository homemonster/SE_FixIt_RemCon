#include "Defines.hlsli"

#define HISTOGRAM_BIN_COUNT 64

StructuredBuffer<uint> _Histogram : register(t0);
Texture2D<float2> _LastAutoExposure : register(t1);
Texture2D<float2> _AutoExposure : register(t1);

//-----------------------------------------------------------------------------------------
// FindMaxHistogramValue
//-----------------------------------------------------------------------------------------
float FindMaxHistogramValue()
{
	uint maxValue = 0;
	for (uint i = 0; i < HISTOGRAM_BIN_COUNT; ++i)
	{
		maxValue = max(maxValue, _Histogram[i]);
	}

	return (float)maxValue;
}

//-----------------------------------------------------------------------------------------
// GetHistogramBinFromLuminance
//-----------------------------------------------------------------------------------------
float GetHistogramBinFromLuminance(float luminance)
{
	float logLuminance = log2(luminance);
	float relativeBin = saturate(logLuminance * HistogramScaleOffset.x + HistogramScaleOffset.y);
	float bin = relativeBin * (HISTOGRAM_BIN_COUNT - 1);
	return bin;
}

//-----------------------------------------------------------------------------------------
// GetLuminanceFromHistogramBin
//-----------------------------------------------------------------------------------------
float GetLuminanceFromHistogramBin(uint index)
{
	float relativeIndex = float(index) / float(HISTOGRAM_BIN_COUNT - 1);
	float logLuminance = relativeIndex * HistogramScaleOffset.z + HistogramScaleOffset.w;
	return exp2(logLuminance);
}

//-----------------------------------------------------------------------------------------
// GetLuminanceFromHistogramBin
//-----------------------------------------------------------------------------------------
float GetLuminanceFromHistogramBin(float index)
{
	float relativeIndex = index / float(HISTOGRAM_BIN_COUNT - 1);
	float logLuminance = relativeIndex * HistogramScaleOffset.z + HistogramScaleOffset.w;
	return exp2(logLuminance);
}
