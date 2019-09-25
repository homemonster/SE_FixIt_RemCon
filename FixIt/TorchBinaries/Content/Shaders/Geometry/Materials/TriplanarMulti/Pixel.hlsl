
// Following defines must be placed before TriplanarSampling.hlsli is included !
#include "Declarations.hlsli"
#include <Geometry/PixelTemplateBase.hlsli>
#include <Geometry/Materials/PixelUtilsMaterials.hlsli>
#include <Common.hlsli>
#include <Math/Math.hlsli>
#include <Geometry/TriplanarSampling.hlsli>

#define WANTS_POSITION_WS 1

cbuffer VoxelMaterialsConstants : register (b6)
{
	TriplanarMaterialConstants VoxelMaterials[MAX_VOXEL_MATERIALS];
};

void pixel_program(PixelInterface pixel, inout MaterialOutputInterface output)
{
    Dither(pixel.screen_position.xyz, pixel.custom_alpha);

#ifndef DEPTH_ONLY
	float3 mat_weights = pixel.custom.mat_weights;
	uint3 mat_indices = pixel.custom.mat_indices;

	TriplanarInterface triplanarInput;
	InitilizeTriplanarInterface(pixel, triplanarInput);

	TriplanarOutput triplanarWeighted;
#ifdef TRIPLANAR_MULTI_DITHER
	float tex_dither = Dither8x8[(uint2)pixel.screen_position.xy % 8];
	float ctr = 0;
	uint t = 0;
	for (; t < 3; t++)
	{
		ctr += mat_weights[t];
		if (ctr >= tex_dither)
			break;
	}

	TriplanarMaterialConstants material = VoxelMaterials[mat_indices[t]];
	SampleTriplanarBranched(material, triplanarInput, triplanarWeighted);
#else
	triplanarWeighted.cm = 0;
	triplanarWeighted.ng = 0;
	triplanarWeighted.ext = 0;

	for (uint t = 0; t < 3; t++)
	{
		[branch]
		if (mat_weights[t] >= 0.0005f)
		{
			TriplanarMaterialConstants material = VoxelMaterials[mat_indices[t]];

			TriplanarOutput triplanarOutput;
			SampleTriplanarBranched(material, triplanarInput, triplanarOutput);

			triplanarWeighted.cm += triplanarOutput.cm * mat_weights[t];
			triplanarWeighted.ng += triplanarOutput.ng * mat_weights[t];
			triplanarWeighted.ext += triplanarOutput.ext * mat_weights[t];
			triplanarWeighted.ctr += triplanarOutput.ctr;
		}
	}
#endif
	FeedOutputTriplanar(pixel, triplanarInput, triplanarWeighted, output);
#endif
}

#include <Geometry/Passes/PixelStage.hlsli>
