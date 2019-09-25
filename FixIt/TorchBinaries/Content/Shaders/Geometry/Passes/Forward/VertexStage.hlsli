#include "Declarations.hlsli"

void __vertex_shader(__VertexInput input, out VertexStageOutput output, uint sv_vertex_id : SV_VertexID)
{
	VertexShaderInterface vertex = __prepare_interface(input, sv_vertex_id);

	vertex_program(vertex, output.custom);

	output.position = vertex.position_clip;
	output.worldPosition = vertex.position_local.xyz;
	output.key_color = vertex.key_color;
	output.custom_alpha = vertex.custom_alpha;

#ifdef USE_SIMPLE_INSTANCING_COLORING
    output.instance_key_color_dithering = input.instance_keyColorDithering;
    output.instance_color_mult_emissivity = input.instance_colorMultEmissivity;
#endif
}
