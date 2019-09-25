// Following defines must be placed before TriplanarSampling.hlsli is included !

#include "Declarations.hlsli"
#include <Geometry/PixelTemplateBase.hlsli>
#include <Geometry/Materials/PixelUtilsMaterials.hlsli>
#include <Common.hlsli>
#include <Math/Math.hlsli>
#include <Geometry/TriplanarSampling.hlsli>
#include <Frame.hlsli>

#define WANTS_POSITION_WS 1

cbuffer VoxelMaterialsConstants : register (b6)
{
	TriplanarMaterialConstants VoxelMaterials[MAX_VOXEL_MATERIALS];
};

void pixel_program(PixelInterface pixel, inout MaterialOutputInterface output)
{
    Dither(pixel.screen_position.xyz, pixel.custom_alpha);

#ifndef DEPTH_ONLY
	TriplanarInterface triplanarInput;
	InitilizeTriplanarInterface(pixel, triplanarInput);

	TriplanarOutput triplanarOutput;
	TriplanarMaterialConstants material = VoxelMaterials[(uint)floor(pixel.custom.mat_idx + 0.5f)]; // Rounding is necessary, otherwise interesting things start happening :)
	SampleTriplanarBranched(material, triplanarInput, triplanarOutput);

	FeedOutputTriplanar(pixel, triplanarInput, triplanarOutput, output);
#endif
}

#include <Geometry/Passes/PixelStage.hlsli>
