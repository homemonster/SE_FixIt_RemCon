#include "EyeAdaptation.hlsli"
#include "../PostprocessBase.hlsli"
#include "../Tonemapping/Filters.hlsli"
#include <Common.hlsli>
#include <Frame.hlsli>
#include <Math/Color.hlsli>

//-----------------------------------------------------------------------------------------
// 
//-----------------------------------------------------------------------------------------
float4 __pixel_shader(PostprocessVertex input) : SV_Target0
{
	float4 color = float4(0, 0, 0, 0.5);
	input.uv.y = 1 - input.uv.y;

	float binIndex = input.uv.x * (HISTOGRAM_BIN_COUNT);
	uint binIndexInt = (uint)round(binIndex);
	float binValue = _Histogram[binIndexInt] / FindMaxHistogramValue();

	color += step(input.uv.y, binValue) * 0.8;

	float minLuminanceIndex = GetHistogramBinFromLuminance(HistogramMinBrightness);
	float maxLuminanceIndex = GetHistogramBinFromLuminance(HistogramMaxBrightness);

	if (binIndex >= minLuminanceIndex && binIndex <= maxLuminanceIndex)
	{
		color *= float4(0, 0.3, 0, 1);
		color += float4(0, 0.3, 0, 0);
	}

	float2 exposure = _AutoExposure.Sample(PointSampler, float2(0.5, 0.5));

	float2 luminance;
	luminance.x = GetLuminanceFromHistogramBin(binIndex);
	luminance.y = GetLuminanceFromHistogramBin(binIndex + 0.5);
	float exposedLuminance = luminance.x * exp2(exposure.y);

	float2 localExposure;
	localExposure.x = CalculateExposure(luminance.x, frame_.Post.LuminanceExposure);
	localExposure.y = CalculateExposure(luminance.y, frame_.Post.LuminanceExposure);

	// current exposure
	if (localExposure.x >= exposure.y && exposure.y >= localExposure.y)
		color = float4(0.9, 0, 0, 1);
	// desired exposure
	if (localExposure.x >= exposure.x && exposure.x >= localExposure.y)
		color = float4(0.9, 0.9, 0, 1);

	float3 tm;
	float whitePoint = frame_.Post.WhitePoint;
	// hejl tone map	
	//tm = ToneMapFilmic_Hejl(exposedLuminance, whitePoint);
	//if (tm.x >= input.uv.y - 0.01 && tm.x <= input.uv.y + 0.01)
	//	color = float4(0.5, 0, 0, 1);

	// filmic tone map
	//tm = ToneMapFilmic_Hable(exposedLuminance, whitePoint);
	//if (tm.x >= input.uv.y - 0.01 && tm.x <= input.uv.y + 0.01)
	//	color = float4(0.5, 0.5, 0, 1);

	// neutral tonemap
	tm = ToneMapFilmic_Hable(exposedLuminance, whitePoint);
	if (tm.x >= input.uv.y - 0.01 && tm.x <= input.uv.y + 0.01)
		color = float4(0.0, 0.0, 0.5, 1);

	// grid
	if (abs(input.uv.x - 0.25) <= (0.5 / 256.0))
		color += float4(0.1, 0.1, 0.2, 1);
	if (abs(input.uv.x - 0.5) <= (0.5 / 256.0))
		color += float4(0.1, 0.1, 0.2, 1);
	if (abs(input.uv.x - 0.75) <= (0.5 / 256.0))
		color += float4(0.1, 0.1, 0.2, 1);
	if (abs(input.uv.y - 0.5) <= (0.5 / 128.0))
		color += float4(0.1, 0.1, 0.2, 1);

	return color;
}