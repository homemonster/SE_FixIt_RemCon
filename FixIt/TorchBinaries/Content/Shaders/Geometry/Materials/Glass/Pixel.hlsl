#define CUSTOM_DEPTH

#include "Declarations.hlsli"
#include <Geometry/PixelTemplateBase.hlsli>
#include <Geometry/Materials/PixelUtilsMaterials.hlsli>
#include <Lighting/EnvAmbient.hlsli>
#include <Shadows/Csm.hlsli>
#include <Geometry/Materials/TransparentConstants.hlsli>
#include <Lighting/LightingModel.hlsli>

float CalculateFresnel(float cosTheta, float fresnelStrength)
{
    //schlick's fresnel approximation
    float f = 1.0 - cosTheta;
    float f2 = f*f; f *= f2 * f2;
    return lerp(0, 1.0, f*fresnelStrength);
}

void pixel_program(PixelInterface pixel, inout MaterialOutputInterface output)
{
	Dither(pixel.screen_position, pixel.custom_alpha);

#ifndef DEPTH_ONLY
    output.depth = linearize_depth(pixel.screen_position.z, frame_.Environment.projection_matrix);
    float ambientFarFactor = GetAmbientFarFactor(-output.depth);

    // constants
	float4 color = TransparentConstants.Color;
    float4 colorAdd = TransparentConstants.ColorAdd;
    float4 shadowMultiplier = TransparentConstants.ShadowMultiplier;
    float4 lightMultiplier = TransparentConstants.LightMultiplier;
    float reflectivity = TransparentConstants.Reflectivity;
	float fresnel = TransparentConstants.Fresnel;
    float reflectionShadow = TransparentConstants.ReflectionShadow;
    float gloss = TransparentConstants.Gloss;
    float glossTextureAdd = TransparentConstants.GlossTextureAdd;
    float specularColorFactor = TransparentConstants.SpecularColorFactor;
    float4 ambientMultiplier = 4;// TransparentConstants.AmbientMultiplier.rrrg;

	float4 textureSample = Texture.Sample(LinearSampler, pixel.custom.texcoord0.xy);
	float4 textureNGSample = TextureNormalGloss.Sample(LinearSampler, pixel.custom.texcoord0.xy);
		
	// reflection
	float4 reflection = 0;
	float3 viewVector = normalize(get_camera_position() - pixel.custom.positionw);
	float4 reflectionColor = 0;
	float fresnelReflectivity = 0;
    if ((fresnel + reflectivity) > 0)
    {
        float3 reflectionSample = AmbientSpecular(1.0, saturate(textureNGSample.w + glossTextureAdd), pixel.custom.normal, viewVector, ambientFarFactor);
        float reflectionSampleAlpha = 0.1;/// max(max(reflectionSample.x, reflectionSample.y), reflectionSample.z);
        reflectionColor = float4(reflectionSample, reflectionSampleAlpha);
        float nv = saturate(dot(pixel.custom.normal, viewVector));
		fresnelReflectivity = max(0, CalculateFresnel(nv, fresnel));
        //reflection = reflectionColor * (f + reflectivity);
    }

    // texture
    color *= textureSample;

    // shadow
    float shadow = CalculateShadow(pixel.custom.positionw, 1);
    
    // lighting
	float4 shaded = 0;
    shaded += AmbientDiffuseT(color, pixel.custom.normal, ambientFarFactor) * frame_.Light.ambientDiffuseFactor * ambientMultiplier;
    shaded += MainDirectionalLightT(color, color * specularColorFactor * shadow + reflectionColor * reflectivity, gloss, pixel.custom.normal, viewVector) * lightMultiplier * shadow;
    shaded += color * shadowMultiplier * (1 - shadow);
    shaded += colorAdd;
    float ln = saturate(dot(-frame_.Light.directionalLightVec, pixel.custom.normal)) * shadow;
    shaded += reflectionColor * (fresnelReflectivity + reflectivity) * float4(lerp(reflectionShadow, 1.0f, ln).rrr, 1) * 0.5f;
    shaded.a = saturate(shaded.a);
    output.base_color = shaded.xyz;
    output.transparency = shaded.a;

    // hotfix for holograms:
    if (pixel.custom_alpha.y < 0)
    {
        output.base_color.xyz *= Hologram(pixel.screen_position, pixel.custom_alpha);
        //output.emissive = 1;
    }
#endif
}
#include <Geometry/Passes/PixelStage.hlsli>
