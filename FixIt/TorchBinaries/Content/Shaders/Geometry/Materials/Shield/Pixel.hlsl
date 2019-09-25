#define CUSTOM_DEPTH

#include "Declarations.hlsli"
#include <Geometry/PixelTemplateBase.hlsli>
#include <Geometry/Materials/PixelUtilsMaterials.hlsli>
#include <Lighting/EnvAmbient.hlsli>
#include <Shadows/Csm.hlsli>
#include <Geometry/Materials/TransparentConstants.hlsli>
#include <Lighting/LightingModel.hlsli>

float3 myRefract(float3 I, float3 N, float ior)
{
    float cosi = clamp(-1, 1, dot(I, N));
    float etai = 1, etat = ior;
    float3 n = N;
    if (cosi < 0)
        cosi = -cosi;
    else 
    {
        float tmp = etai;
        etai = etat;
        etat = tmp;
        n= -N; 
    }
    float eta = etai / etat;
    float k = 1 - eta * eta * (1 - cosi * cosi);
    return k < 0 ? 0 : eta * I + (eta * cosi - sqrt(k)) * n; 
}

void pixel_program(PixelInterface pixel, inout MaterialOutputInterface output)
{
#ifndef DEPTH_ONLY
    // setup
    float emissivityStrength = TransparentConstants.LightMultiplier.x;

    float backLightFalloff = TransparentConstants.LightMultiplier.y;
    float backLightStrength = TransparentConstants.LightMultiplier.z;
    
    float reflectionFactor = TransparentConstants.Reflectivity;

    float refractionDistortionStrength = TransparentConstants.ReflectionShadow;
    float refractionIorFactor = TransparentConstants.Fresnel;

    float opacity = CustomAlphaToOpacity(pixel.custom_alpha);

    // distance fade
    float3 viewDir = get_camera_position() - pixel.custom.positionw;
    float distance = length(viewDir);
    float distFactor = (distance - pixel.custom.radius) / (pixel.custom.radius);
    if ( pixel.custom.sign > 0)
        distFactor = 0;
    if (distFactor > 1)
        discard;
    distFactor = saturate(1 - distFactor);

	float3 viewVector = viewDir / distance;

    // depth
    output.depth = linearize_depth(pixel.screen_position.z, frame_.Environment.projection_matrix);
    float targetDepth = TextureDepth[pixel.screen_position.xy].r;
    float targetDepthLinear = linearize_depth(targetDepth, frame_.Environment.projection_matrix);
    float depthFactor = CalcSoftParticle(TransparentConstants.SoftParticleDistanceScale, targetDepthLinear, output.depth);
    float ambientFarFactor = GetAmbientFarFactor(-output.depth);

    // alpha texture
    float textureSample = Texture.Sample(TextureSampler, pixel.custom.texcoord0.xy).r;

    // normal texture
	float4 textureNGSample = TextureNormalGloss.Sample(TextureSampler, pixel.custom.texcoord0.xy);
    float normalLength;
    output.normal = Normal(textureNGSample.xyz, pixel.custom.tangent, pixel.custom.normal, normalLength);
    float gloss = textureNGSample.w * TransparentConstants.Gloss;
    float refractionIor = textureNGSample.w * refractionIorFactor;

    // coloring
    float3 userColor = hsv_to_rgb(pixel.key_color.xyz);


    // emissivity
    float emissivity = textureSample * emissivityStrength;
    
    // back light and depth contouring
    float vn = saturate(dot(viewVector, pixel.custom.normal));
    float highlightFactor = max(1 - vn, 1 - depthFactor);
    float backLight = pow(abs(highlightFactor * backLightStrength), backLightFalloff);

    // reflection
    float3 reflectionSample = AmbientSpecular(reflectionFactor, gloss, output.normal, viewVector, ambientFarFactor);

    // refraction
    float3 refractVec = normalize(myRefract(viewVector, output.normal, refractionIor));
    float3 refractVecProj = mul(float4(refractVec, 1), frame_.Environment.view_projection_matrix).xyz;
    float2 size;
    TextureRefraction.GetDimensions(size.x, size.y);
    float2 uvPos = pixel.screen_position.xy / size + refractVecProj.xy * refractionDistortionStrength;
	float3 refracted = TextureRefraction.Sample(LinearSampler, uvPos).xyz;

    // refraction ghosting hotfix
	float refractedDepth = TextureDepth.Sample(LinearSampler, uvPos).r;
    float refractedDepthLinear = linearize_depth(refractedDepth, frame_.Environment.projection_matrix);
    float ghostingFactor = 1 - saturate(refractedDepthLinear - output.depth);
    refracted *= ghostingFactor;

    // summing all up
    float3 shaded = 0;
    shaded += userColor * textureSample * (emissivity + backLight);
    shaded += reflectionSample;
    shaded += refracted;

    output.transparency = 1 * distFactor * saturate(ghostingFactor + 0.5) * opacity;
    output.base_color = shaded.xyz * distFactor * opacity;

    // hotfix for holograms:
    if (pixel.custom_alpha.y < 0)
    {
        output.base_color.xyz *= Hologram(pixel.screen_position, pixel.custom_alpha);
    }
#endif
}

#include <Geometry/Passes/PixelStage.hlsli>
