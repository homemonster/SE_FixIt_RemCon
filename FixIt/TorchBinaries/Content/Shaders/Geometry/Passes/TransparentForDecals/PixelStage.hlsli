#include "Declarations.hlsli"

#include <Frame.hlsli>
#include <VertexTransformations.hlsli>

Texture2D<float> ComparableDepthBuffer : register (t0);

void __pixel_shader(VertexStageOutput vertex, out float2 normal : SV_TARGET0)
{
	float2 screenUV = screen_to_uv(vertex.position.xy);
	float hw_depth = ComparableDepthBuffer.Sample(PointSampler, screenUV).r;
	float cmpDepth = compute_depth(hw_depth);

	float inDepth = compute_depth(vertex.position.z);

	clip(abs(cmpDepth - inDepth) - 0.05f);

	// Set normals on gbuffer1 copy
	float3 nview = world_to_view(vertex.normal);
	normal = pack_normals2(normalize(nview));
}
