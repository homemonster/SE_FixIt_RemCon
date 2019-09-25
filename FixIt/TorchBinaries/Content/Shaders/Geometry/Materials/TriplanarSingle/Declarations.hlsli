#include <Common.hlsli>
#include "../TriplanarMaterialConstants.hlsli"

struct MaterialConstants
{
	// NOTE: If material constant is empty, NO constant buffer for material will be bound in the render pass
	#define MATERIAL_CONSTANTS_IS_EMPTY
};

struct MaterialVertexPayload
{
	float3 normal 		: NORMAL;
	float3 texcoord0	: TEXCOORD0;
	float distance		: TEXCOORD1;

	float mat_idx : TEXCOORD2;

	float3x3 world_matrix : TEXCOORD3;
	float3 color_shift : COLORSHIFT;
};

Texture2DArray<float4> ColorMetal : register(t10);
Texture2DArray<float4> NormalGloss : register(t11);
Texture2DArray<float4> Ext : register(t12);
