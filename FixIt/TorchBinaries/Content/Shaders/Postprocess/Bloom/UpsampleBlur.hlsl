#include <Common.hlsli>
#include "../PostprocessBase.hlsli"
#include "Defines.hlsli"

float4 UpSampleBlur(Texture2D source, float2 uv, float2 texelSize)
{
	float2 halfpixel = texelSize.xy * 0.5;
	float4 sum = source.Sample(LinearSampler, uv + float2(-halfpixel.x * 2.0, 0.0));
	sum += source.Sample(LinearSampler, uv + float2(-halfpixel.x, halfpixel.y)) * 2.0;
	sum += source.Sample(LinearSampler, uv + float2(0.0, halfpixel.y * 2.0));
	sum += source.Sample(LinearSampler, uv + float2(halfpixel.x, halfpixel.y)) * 2.0;
	sum += source.Sample(LinearSampler, uv + float2(halfpixel.x * 2.0, 0.0));
	sum += source.Sample(LinearSampler, uv + float2(halfpixel.x, -halfpixel.y)) * 2.0;
	sum += source.Sample(LinearSampler, uv + float2(0.0, -halfpixel.y * 2.0));
	sum += source.Sample(LinearSampler, uv + float2(-halfpixel.x, -halfpixel.y)) * 2.0;
	return sum / 12.0;
}

float4 __pixel_shader(PostprocessVertex input) : SV_Target0
{
	float4 downsampledSourceColor = DownsampledSource.Sample(LinearSampler, input.uv);

	float2 size;
	Source.GetDimensions(size.x, size.y);
	return UpSampleBlur(Source, input.uv, rcp(size)) + downsampledSourceColor;
}