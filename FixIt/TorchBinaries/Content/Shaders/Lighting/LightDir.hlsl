// @define NO_SHADOWS
// @define SAMPLE_FREQ_PASS

#include "Light.hlsli"
#include <Postprocess/PostprocessBase.hlsli>
#include <VertexTransformations.hlsli>

Texture2D<float> ShadowsMainView : register(MERGE(t, SHADOW_SLOT));

void __pixel_shader(PostprocessVertex vertex, out float3 output : SV_Target0
#ifdef SAMPLE_FREQ_PASS
	, uint sample_index : SV_SampleIndex
#endif
	)
{
#if !defined(MS_SAMPLE_COUNT) || defined(PIXEL_FREQ_PASS)
	SurfaceInterface input = read_gbuffer(vertex.position.xy);
#else
	SurfaceInterface input = read_gbuffer(vertex.position.xy, sample_index);
#endif

	if(IsDepthForeground(input.native_depth)) 
	{
        float shadow = 1;
#ifndef NO_SHADOWS
        shadow = ShadowsMainView[vertex.position.xy].x;
        shadow = 1 - (1 - shadow) * (1 - frame_.Light.shadowFadeout);
#endif
        float lightAO = saturate(1 - (1 - input.ao) * frame_.Light.aoDirLight);
        float indirectAO = saturate(1 - (1 - input.ao) * frame_.Light.aoIndirectLight);

        float ambientFarFactor = GetAmbientFarFactor(input.depth);

        float3 shaded = 0;
		// emissive
        shaded += input.albedo * input.emissive * frame_.Post.BloomEmissiveness;
		
        // ambient diffuse & specular
        shaded += AmbientDiffuse(input.albedo, input.N, ambientFarFactor) * frame_.Light.ambientDiffuseFactor * indirectAO;
        shaded += AmbientSpecular(input.f0, input.gloss, input.N, input.V, ambientFarFactor) * frame_.Light.ambientSpecularFactor * indirectAO;

		// main directional light diffuse & specular
		shaded += MainDirectionalLight(input) * shadow * lightAO;
        
		output = Fog(shaded, input.depth);
	}
	else 	
	{
		output = SkyboxColor(input.VSkybox) * frame_.Light.skyboxBrightness;

        output += GetSunColor(-frame_.Light.directionalLightVec, input.V, frame_.Light.SunDiscColor * frame_.Light.directionalLightColor * frame_.Light.SunDiscIntensity, frame_.Light.SunDiscInnerDot, frame_.Light.SunDiscOuterDot); // multiplier 5
	}
}
