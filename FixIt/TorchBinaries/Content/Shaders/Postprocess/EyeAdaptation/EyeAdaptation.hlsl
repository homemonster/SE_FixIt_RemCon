#include "EyeAdaptation.hlsli"
#include "../PostprocessBase.hlsli"
#include "../defines.hlsli"

#include <Frame.hlsli>

//-----------------------------------------------------------------------------------------
// 
//-----------------------------------------------------------------------------------------
float2 __pixel_shader(PostprocessVertex input) : SV_Target0
{
	float totalSum = 0;
    uint i;
	for (i = 0; i < HISTOGRAM_BIN_COUNT; ++i)
	{
		totalSum += (float)_Histogram[i];
	}

	// avoid 0 total sum, it could theoreticaly happen with high luminance threshold
	totalSum = max(totalSum, 1);

	float oneOverTotalSum = 1 / totalSum;

	float2 sumMin = 0;
	float2 sumMax = 0;

	for (i = 0; i < HISTOGRAM_BIN_COUNT; ++i)
	{
		float binPercentage = (float)_Histogram[i] * oneOverTotalSum;
		float luminance = GetLuminanceFromHistogramBin(i);

		float binPercentageMin = min(binPercentage, HistogramMinFilter - sumMin.y);
		float binPercentageMax = min(binPercentage, HistogramMaxFilter - sumMax.y);

		sumMin += float2(luminance * binPercentageMin, binPercentageMin);
		sumMax += float2(luminance * binPercentageMax, binPercentageMax);
	}

	// avoid division by zero
	sumMin.y = max(sumMin.y, 0.0001);
	float2 filteredLuminance = sumMax - sumMin;

#ifdef GEOMETRIC_MEAN
		float averageLuminance = clamp(exp2(filteredLuminance.x / filteredLuminance.y), HistogramMinBrightness, HistogramMaxBrightness);
#else
		float averageLuminance = clamp(filteredLuminance.x / filteredLuminance.y, HistogramMinBrightness, HistogramMaxBrightness);
#endif

	//float desiredExposure = _AutoExposureParams.x / averageLuminance;
	float desiredExposure = CalculateExposure(averageLuminance, frame_.Post.LuminanceExposure);
	float lastExposure = _LastAutoExposure.Sample(PointSampler, float2(0.5, 0.5)).y;

	float exposureDelta = desiredExposure - lastExposure;
	float speed = exposureDelta < 0 ? frame_.Post.EyeAdaptationSpeedUp : frame_.Post.EyeAdaptationSpeedDown;
	float exposure = lastExposure + exposureDelta * (1.0 - exp2(-frame_.frameTimeDelta * speed));

	return float2(desiredExposure, exposure);
}