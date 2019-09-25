#include <Common.hlsli>
#include <Frame.hlsli>
#include "../PostprocessBase.hlsli"
#include "../defines.hlsli"

float2 __pixel_shader(PostprocessVertex input) : SV_Target0
{
	float exposure = CalculateExposure(frame_.Post.ConstantLuminance, frame_.Post.LuminanceExposure);
	return float2(frame_.Post.ConstantLuminance, exposure);
}