// @define SAMPLE_FREQ_PASS
// @define MQ 1,LQ 1

#ifndef SAMPLE_FREQ_PASS
#define PIXEL_FREQ_PASS
#endif

//#define LQ 1

#include "AtmosphereCommon.hlsli"

#include <Frame.hlsli>
#include <GBuffer/GBuffer.hlsli>

#ifdef LQ
#define SKIP_FOG 1
#define PASS_COUNT 1
#elif defined(MQ)
#define PASS_COUNT 2
#else
#define PASS_COUNT 4
#endif
// additive blend
void __pixel_shader(float4 svPos : SV_Position, out float4 output : SV_Target0
#ifdef SAMPLE_FREQ_PASS
	, uint sample_index : SV_SampleIndex
#endif
	) 
{
#if !defined(MS_SAMPLE_COUNT) || defined(PIXEL_FREQ_PASS)
	SurfaceInterface input = read_gbuffer(svPos.xy);
#else
	SurfaceInterface input = read_gbuffer(svPos.xy, sample_index);
#endif

#ifdef SKIP_FOG
    if(input.native_depth > 0)
		discard;
#endif

	// We need to clamp it to mitigate artefacts in the tonemapper
	// 10 is the smallest value for which it still looks acceptable
    //output = float4(input.position, 0);
	output = ComputeAtmosphere(input.V, input.position, frame_.Light.directionalLightVec, input.depth, input.native_depth, PASS_COUNT);
}
