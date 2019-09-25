#include "Declarations.hlsli"
#include <Geometry/VertexTemplateBase.hlsli>
#include <Geometry/Materials/TransparentConstants.hlsli>

void vertex_program(inout VertexShaderInterface vertex, out MaterialVertexPayload custom_output)
{
#ifndef DEPTH_ONLY
    float modelScale = length(vertex._local_matrix._21_22_23);
    float uvScale = trunc(modelScale * TransparentConstants.ShadowMultiplier.x + 0.5f);
	custom_output.texcoord0 = vertex.texcoord0 * uvScale + float2(frac(frame_.frameTime * TransparentConstants.ShadowMultiplier.y), 0);
    custom_output.positionw = vertex.position_local.xyz;
	
    float3 V = normalize(get_camera_position() - custom_output.positionw);
    float vn = dot(V, vertex.normal_world);
    float vnSign = sign(vn);
    if (vnSign == 0)
        vnSign = 1;
	custom_output.normal = vertex.normal_world * vnSign;
    custom_output.sign = vnSign;
	custom_output.tangent = vertex.tangent_world;
    custom_output.radius = TransparentConstants.Radius * modelScale;
#endif
}

#include <Geometry/Passes/VertexStage.hlsli>
