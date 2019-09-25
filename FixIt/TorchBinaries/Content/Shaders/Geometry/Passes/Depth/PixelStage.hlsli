struct PixelStageInput
{
	float4 position : SV_Position;
	MaterialVertexPayload custom;
#ifdef PASS_OBJECT_VALUES_THROUGH_STAGES
	float3 key_color : TEXCOORD7;
	float2 custom_alpha : TEXCOORD9;
#endif
};

void __pixel_shader(PixelStageInput input)
{
	PixelInterface pixel;
	pixel.screen_position = input.position.xyz;
	pixel.custom = input.custom;
	init_ps_interface(pixel);
#ifdef PASS_OBJECT_VALUES_THROUGH_STAGES
	pixel.key_color = input.key_color;
    pixel.custom_alpha = input.custom_alpha;
#endif

	MaterialOutputInterface material_output = make_mat_interface();
    material_output.LOD = pixel.LOD;
    pixel_program(pixel, material_output);
}
