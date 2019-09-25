#ifndef GBUFFER_WRITE_H__
#define GBUFFER_WRITE_H__

#include <Frame.hlsli>
#include <VertexTransformations.hlsli>

struct GbufferOutput 
{
    float4 gbuffer0 : SV_Target0;
    float4 gbuffer1 : SV_Target1;
    float4 gbuffer2 : SV_Target2;
#ifdef CUSTOM_DEPTH
	float depth : SV_Depth;
#endif
};

void GbufferWrite(out GbufferOutput output,
    float3 color, float metal, float gloss, float3 N, float ao, float emissive, uint coverage, uint lod
#ifdef CUSTOM_DEPTH
	, float depth
#endif
	)
{
    float3 nview = normalize(world_to_view(N));
    float2 nenc = pack_normals2(nview);
    output.gbuffer0 = float4(color, lod / 255.f);
    output.gbuffer1 = float4(nenc, ao, 0);
    output.gbuffer2 = float4(metal, gloss, emissive, coverage / 255.f);

#ifdef CUSTOM_DEPTH
	output.depth = depth;
#endif
}

// Refer to MyMeshMaterial1.BindMaterialTextureBlendStates for blend state selection
void GbufferWriteBlend(out GbufferOutput output,
    float3 color, float metal, float3 normal, float gloss, float ao, float emissive, float alpha, float alphaN, float fadeAlpha
#ifdef CUSTOM_DEPTH
    , float depth
#endif
    )
{
    output.gbuffer0 = float4(color, alpha) * fadeAlpha;

    // Don't multiply normals and ao because they are already multiplied by the blendstate
    float3 normalV = world_to_view(normal);
    float2 enc = pack_normals2(normalV);
    output.gbuffer1 = float4(enc, ao, alphaN * fadeAlpha);

    output.gbuffer2 = float4(metal, gloss, emissive, alpha) * fadeAlpha;

#ifdef CUSTOM_DEPTH
    output.depth = depth;
#endif
}

#endif
