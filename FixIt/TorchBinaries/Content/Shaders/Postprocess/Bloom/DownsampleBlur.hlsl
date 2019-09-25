#include <Common.hlsli>
#include "../PostprocessBase.hlsli"
#include "Defines.hlsli"

float4 DownSampleBlur(Texture2D source, float2 uv, float2 texelSize)
{
	float4 uvDelta = texelSize.xyxy * float4(1, 1, -1, -1);

	float4 color = source.Sample(LinearSampler, uv + uvDelta.xy);
	color += source.Sample(LinearSampler, uv + uvDelta.zw);
	color += source.Sample(LinearSampler, uv + uvDelta.xw);
	color += source.Sample(LinearSampler, uv + uvDelta.zy);

	return color * 0.25;
}

float4 __pixel_shader(PostprocessVertex input) : SV_Target0
{
	float2 size;
	Source.GetDimensions(size.x, size.y);
	return DownSampleBlur(Source, input.uv, rcp(size));
}