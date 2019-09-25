#include "Declarations.hlsli"
#include <Common.hlsli>
#include <Math/Math.hlsli>
#include <Math/Color.hlsli>
#include <Geometry/VertexTemplateBase.hlsli>

#define WANTS_POSITION_WS 1

void vertex_program(inout VertexShaderInterface vertex, out MaterialVertexPayload custom_output)
{
#if defined(DEPTH_ONLY) && defined(USE_VOXEL_DATA)
	// Because the ground has no thickness, we need to simulate some when the sun is underneath the surface
	if (object_.spherizeTo > 0)
	{
		float normalLightDot = dot(vertex.normal_object, frame_.Light.directionalLightVec);
		if (normalLightDot > 0)
		{
			vertex.position_clip -= normalize(WorldToClip(frame_.Light.directionalLightVec)) * 0.15f;
		}
	}
#endif

	float dist = length(vertex.position_local.xyz - get_camera_position());

	custom_output.normal = vertex.normal_object;
	custom_output.texcoord0 = vertex.position_scaled_untranslated.xyz;

	custom_output.distance = dist;
	custom_output.world_matrix = (float3x3)vertex._local_matrix;
	custom_output.mat_idx = vertex.triplanar_mat_info.x;
	custom_output.color_shift = vertex.key_color;
}

#include <Geometry/Passes/VertexStage.hlsli>
