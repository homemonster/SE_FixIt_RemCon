#ifndef PIXEL_UTILS_MATERIALS_H
#define PIXEL_UTILS_MATERIALS_H

#include <PixelUtils.hlsli>
#include <Lighting/Brdf.hlsli>
#include <Math/Color.hlsli>

// originally, HSV delta colors were designed to be applied to magenta (srgb 142, 29, 104; s-hsv 0.83, 0.80, 0.56 / hsv 0.83, 0.97, 0.28)
// currently, we are using standard gray for coloring (srgb 144, 144, 144; s-hsv 0, 0, 0.56 / hsv 0,0,0.28)
// magicDelta is difference between original magenta hsv color and current one
static const float3 conversionDeltaGray = float3(0, 0.9696442, -0.0086);
// this is a hack to better work with current armor texture - lighten the color a bit
static const float3 conversionDeltaColor = float3(0, 0.9696442, 0.06);

float3 ColorizeGray(float3 texel, float3 coloringHSV, float coloringFactor)
{
    if (coloringFactor > 0)
    {
        coloringHSV += frame_.TextureDebugMultipliers.ColorizeHSV.rgb;
        // test so we could remove rgb_to_srgb conversion
        //coloringHSV.y = coloringHSV.y * 1.41;
        //coloringHSV.z = pow(coloringHSV.z + 0.56, 2.2) - 0.28;

        float3 hsv = rgb_to_hsv(rgb_to_srgb(texel));
        hsv.xy = 0;
        float3 finalHsv = saturate(hsv + coloringHSV);

        texel = lerp(texel, srgb_to_rgb(hsv_to_rgb(finalHsv)), coloringFactor);
    }
    return texel;
}

#ifdef ALPHA_MASKED
int AlphamaskCoverageAndClip(float threshold, float2 texcoord0, float alphamaskTexIndex)
{
#if !defined(MS_SAMPLE_COUNT) || defined(DEPTH_ONLY)
#ifdef USE_TEXTURE_INDICES
	float alpha = AlphamaskArrayTexture.Sample(TextureSampler, float3(texcoord0, alphamaskTexIndex));
#else
	float alpha = AlphamaskTexture.Sample(TextureSampler, texcoord0).x;
#endif
    clip(alpha - threshold);
    return 0;
#else
    int coverage = 0;
    [unroll]
    for (int s = 0; s < MS_SAMPLE_COUNT; s++)
    {
        float2 sample_texcoord = EvaluateAttributeAtSample(texcoord0, s);
        float alpha = AlphamaskTexture.Sample(TextureSampler, sample_texcoord).x;
        coverage |= (alpha > threshold) ? (uint(1) << s) : 0;
    }
    clip(coverage - 1);
    return coverage;
#endif
}
#endif

#ifndef DEPTH_ONLY
float RemoveMetalnessFromColoring(float metalness, float coloring)
{
    const float threshold = 0.4;
    const float thresholdMultiply = 0.5;
    return coloring * saturate(1 - saturate(metalness - threshold) / ((1 - threshold) * thresholdMultiply));
}

void FeedOutputInternal(PixelInterface pixel, inout MaterialOutputInterface output, float4 cm, float4 extras)
{
    output.metalness = cm.w;

    float coloring = extras.w;
#ifndef METALNESS_COLORABLE
    coloring = RemoveMetalnessFromColoring(output.metalness, coloring);
#endif
    output.base_color = ColorizeGray(cm.xyz, pixel.key_color.xyz, coloring);

    output.base_color *= pixel.color_mul;
    output.transparency = 0;

    // bc7 compression artifacts can give byte value 1 for 0, which should more visible than small shift
	output.emissive = saturate(extras.y - 1 / 255.) * pixel.emissive;
    output.ao = extras.x;
}

void FeedOutputBuildTangent(PixelInterface pixel, float2 texcoord0, float3 normal, inout MaterialOutputInterface output, float4 ng, float4 cm, float4 extras)
{
    float normalLength;
    output.normal = NormalBuildTangent(ng.xyz, normal, texcoord0, pixel.position_ws, normalLength);

    output.gloss = ToksvigGloss(ng.w, min(normalLength, 1));

    FeedOutputInternal(pixel, output, cm, extras);
}

void FeedOutput(PixelInterface pixel, float4 tangent, float3 normal, inout MaterialOutputInterface output, float4 ng, float4 cm, float4 extras)
{
    float normalLength;
    output.normal = Normal(ng.xyz, tangent, normal, normalLength);

    output.gloss = ToksvigGloss(ng.w, min(normalLength, 1));

    FeedOutputInternal(pixel, output, cm, extras);
}
#endif

float3 Hologram(float3 screen_position, float2 custom_alpha)
{
    float tex_dither = Dither8x8[(uint2)screen_position.xy % 8];
    clip(tex_dither + custom_alpha.y);

    float t = frame_.frameTime / 10.0;
    float2 screenPos = screen_to_uv(screen_position.xy) * 2 - 1;
    float2 param = float2(t, screenPos.x + screenPos.y);
    float flicker = frac(sin(dot(param, float2(12.9898, 78.233))) * 43758.5453) * 0.2 + 0.8;

    float offset = t * 500.0 * 0.2 + frac(sin(dot(screenPos.x, float2(12.9898, 78.233))) * 43758.5453) * 1.5;
    float3 overlay = Dither8x8.Sample(LinearSampler, frac((screenPos.yy * 8.0 + offset / 16.0) + float2(0, 0.8)));
    float3 holoColor = flicker * pow(abs(overlay), 1.5);

    if (custom_alpha.y >= -0.25)
        holoColor *= 1.5;
    return holoColor;
}

void ApplyMultipliers(inout MaterialOutputInterface output)
{
    output.gloss *= frame_.TextureDebugMultipliers.GlossMultiplier;
    output.gloss += frame_.TextureDebugMultipliers.GlossShift;
    output.ao = 1 - (1 - output.ao) * frame_.TextureDebugMultipliers.AoMultiplier;
    output.ao -= frame_.TextureDebugMultipliers.AoShift;
    output.emissive *= frame_.TextureDebugMultipliers.EmissiveMultiplier;
    output.emissive += frame_.TextureDebugMultipliers.EmissiveShift;
    output.base_color *= frame_.TextureDebugMultipliers.AlbedoMultiplier;
    output.base_color += frame_.TextureDebugMultipliers.AlbedoShift;
    output.metalness *= frame_.TextureDebugMultipliers.MetalnessMultiplier;
    output.metalness += frame_.TextureDebugMultipliers.MetalnessShift;
}

#endif // PIXEL_UTILS_MATERIALS_H
