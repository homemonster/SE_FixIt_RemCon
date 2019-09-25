#include <Template.hlsli>

#ifndef MATERIAL_CONSTANTS_IS_EMPTY 
cbuffer Material : register( MERGE(b,MATERIAL_SLOT) )
{
	MaterialConstants material_;
};
#endif

struct PixelInterface 
{
	float3 screen_position;
	float3 key_color;
	float hologram;
	float2 custom_alpha;
	float3 color_mul;
	float emissive;
	float3 position_ws;
	uint material_flags;
    uint LOD;
	// USER DATA 
	MaterialVertexPayload custom;
};

void init_ps_interface(inout PixelInterface pix)
{
	pix.key_color = 0;
	pix.custom_alpha = 0;
	pix.position_ws = 0;
	pix.color_mul = 1;
	pix.emissive = 1;
	pix.material_flags = 0;
	pix.hologram = 0;
#ifdef USE_MERGE_INSTANCING
    pix.LOD = 0;
#else
    pix.LOD = object_.LOD;
#endif

#ifndef PASS_OBJECT_VALUES_THROUGH_STAGES
	pix.material_flags = object_.material_flags;
	pix.key_color = object_.key_color;
	pix.custom_alpha = object_.custom_alpha;
	pix.color_mul = object_.color_mul;
#endif
#ifndef USE_MERGE_INSTANCING
	pix.emissive = object_.emissive;
#endif
}

struct MaterialOutputInterface
{
	float3 base_color;
	float3 normal;
	float gloss;
	float metalness;
	float transparency;
	float ao;
	float emissive;
	uint coverage;
#ifdef CUSTOM_DEPTH
	float depth;
#endif
    uint LOD;
};

MaterialOutputInterface make_mat_interface()
{
	MaterialOutputInterface result;
	result.base_color = 0;
	result.normal = 0;
	result.gloss = 0;
	result.metalness = 0;
	result.transparency = 0;
	result.ao = 1;
	result.emissive = 0;
	result.coverage = COVERAGE_MASK_ALL;
#ifdef CUSTOM_DEPTH
	result.depth = 0;
#endif
    result.LOD = 0;
    return result;
}
