struct VertexStageOutput
{
	float4 position : SV_Position;
	MaterialVertexPayload custom;
#ifdef PASS_OBJECT_VALUES_THROUGH_STAGES
	float3 key_color : TEXCOORD7;
	float2 custom_alpha : TEXCOORD9;
#endif
};

void __vertex_shader(__VertexInput input, out VertexStageOutput output, uint sv_vertex_id : SV_VertexID)
{
	VertexShaderInterface vertex = __prepare_interface(input, sv_vertex_id);

	vertex_program(vertex, output.custom);

	vertex.position_clip.z = max(vertex.position_clip.z, 0);
	output.position = vertex.position_clip;

#ifdef PASS_OBJECT_VALUES_THROUGH_STAGES
	output.key_color = vertex.key_color;
	output.custom_alpha = vertex.custom_alpha;
#endif
}