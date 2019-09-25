#include "Declarations.hlsli"
#include <Geometry/VertexTemplateBase.hlsli>

void vertex_program(inout VertexShaderInterface vertex, out MaterialVertexPayload custom_output)
{
#ifndef DEPTH_ONLY
	custom_output.texcoord0 = vertex.texcoord0;
	custom_output.normal = vertex.normal_world;
    custom_output.positionw = vertex.position_local.xyz;
#endif
}

#include <Geometry/Passes/VertexStage.hlsli>
