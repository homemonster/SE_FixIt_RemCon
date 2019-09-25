#include <Common.hlsli>
#include "../PostprocessBase.hlsli"

Texture2D	Source	: register(t0);

float4 __pixel_shader(PostprocessVertex input) : SV_Target0
{
	float4 color = Source.Sample(LinearSampler, input.uv);
	return color;
}