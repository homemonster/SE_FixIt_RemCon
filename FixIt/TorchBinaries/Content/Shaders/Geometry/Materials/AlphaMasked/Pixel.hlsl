#include "Declarations.hlsli"
#include <Geometry/PixelTemplateBase.hlsli>
#include <Geometry/Materials/PixelUtilsMaterials.hlsli>
#include <Math/Color.hlsli>
#include <Geometry/AlphamaskViews.hlsli>


void RenderSingle(PixelInterface pixel, inout MaterialOutputInterface output)
{
#ifdef USE_TEXTURE_INDICES
	float alpha = AlphamaskArrayTexture.Sample(TextureSampler, float3(pixel.custom.texcoord0, alphamaskTexIndex));
#else
	float alpha = AlphamaskTexture.Sample(TextureSampler, pixel.custom.texcoord0).x;
#endif
    clip(alpha - 0.5f);

#ifndef DEPTH_ONLY
	// for hologram sampling in branch
	if (pixel.custom_alpha.y < 0)
	{
		// discards pixels
		pixel.color_mul *= Hologram(pixel.screen_position, pixel.custom_alpha);
		output.emissive = 1;
	}

#ifdef USE_TEXTURE_INDICES
	float4 texIndices = pixel.custom.texIndices;
	float4 cm = ColorMetalArrayTexture.Sample(TextureSampler, float3(pixel.custom.texcoord0, texIndices.x));
	float4 ng = NormalGlossArrayTexture.Sample(TextureSampler, float3(pixel.custom.texcoord0, texIndices.y));
	float4 extras = ExtensionsArrayTexture.Sample(TextureSampler, float3(pixel.custom.texcoord0, texIndices.z));
#else
	float4 cm = ColorMetalTexture.Sample(TextureSampler, pixel.custom.texcoord0);
	float4 ng = NormalGlossTexture.Sample(TextureSampler, pixel.custom.texcoord0);
	float4 extras = ExtensionsTexture.Sample(TextureSampler, pixel.custom.texcoord0);
#endif
#ifdef BUILD_TANGENT_IN_PIXEL
    FeedOutputBuildTangent(pixel, pixel.custom.texcoord0, pixel.custom.normal, output, ng, cm, extras);
#else
	FeedOutput(pixel, pixel.custom.tangent, pixel.custom.normal, output, ng, cm, extras);
#endif
#endif
}

void pixel_program(PixelInterface pixel, inout MaterialOutputInterface output)
{
	Dither(pixel.screen_position, pixel.custom_alpha);

    RenderSingle(pixel, output);
}

#include <Geometry/Passes/PixelStage.hlsli>
