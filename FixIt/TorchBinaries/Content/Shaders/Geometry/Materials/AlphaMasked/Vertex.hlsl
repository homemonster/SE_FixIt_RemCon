#include "Declarations.hlsli"
#include <Geometry/VertexTemplateBase.hlsli>

void vertex_program(inout VertexShaderInterface vertex, out MaterialVertexPayload custom_output)
{
	custom_output.texcoord0 = vertex.texcoord0;	
#ifdef USE_TEXTURE_INDICES
	custom_output.texIndices = vertex.texIndices;
#endif
#if !defined(DEPTH_ONLY)
	custom_output.normal = vertex.normal_world;
	custom_output.tangent = vertex.tangent_world;
#endif
}

#include <Geometry/Passes/VertexStage.hlsli>
