#include <Common.hlsli>
#include "../PostprocessBase.hlsli"
#include "Defines.hlsli"

// @define BLOOM_ANTIFLICKER

float3 Median(float3 a, float3 b, float3 c)
{
	return a + b + c - min(min(a, b), c) - max(max(a, b), c);
}

float4 __pixel_shader(PostprocessVertex input) : SV_Target0
{
#ifdef BLOOM_ANTIFLICKER
	float2 texelSize;
	Source.GetDimensions(texelSize.x, texelSize.y);
	texelSize = 1.0f / texelSize;
	float3 d = texelSize.xyx * float3(1.0, 1.0, 0.0);

	float4 linearColor = Source.Sample(LinearSampler, input.uv);

	// simple median "cross-filter"
	float4 s1 = Source.Sample(LinearSampler, input.uv - d.xz).rgba;
	float4 s2 = Source.Sample(LinearSampler, input.uv + d.xz).rgba;
	float4 s3 = Source.Sample(LinearSampler, input.uv - d.zy).rgba;
	float4 s4 = Source.Sample(LinearSampler, input.uv + d.zy).rgba;
    
    // results in lower flickering (reduces really just individual pixels and not lines)
    float4 sum = (s1 + s2 + s3 + s4) / 4;
    linearColor = min(linearColor, sum);
#else
	float4 linearColor = Source.Sample(LinearSampler, input.uv);
#endif

	// bloom is configured for more or less LDR content, specular reflections are the only true source of HDR
	// and they can be too powerfull. clamp max brightness as a workaround
	const float4 maxAllowedBrightness = float4(10, 10, 10, 10);

	// exposure
	linearColor *= exp2(Exposure.Load(uint3(0, 0, 0)).y);	

	float totalLuminance = GetRelativeLuminance(linearColor.rgb);

	// 0 to 1 range
	float filter = saturate(totalLuminance / frame_.Post.BloomLumaThreshold);
	// exponential falloff
	filter = pow(filter, 8);

	return linearColor * filter;
}