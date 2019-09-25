#include "PostprocessBase.hlsli"
#include <Common.hlsli>

Texture2D	Source	: register( t0 );

void __pixel_shader(PostprocessVertex input, out float4 output : SV_Target0)
{
    output = Source.Sample(LinearSampler, input.uv);
}
