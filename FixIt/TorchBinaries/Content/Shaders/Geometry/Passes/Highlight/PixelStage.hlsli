struct PixelStageInput
{
	float4 position : SV_Position;
	float3 worldPosition : POSITION;
	MaterialVertexPayload custom;
#ifdef PASS_OBJECT_VALUES_THROUGH_STAGES
	float3 key_color : TEXCOORD7;
	float2 custom_alpha : TEXCOORD9;
#endif
};

struct OutlineConstants {
	float4 Color;
};

cbuffer OutlineConstants : register( b4 ) {
	OutlineConstants Outline;
};

void __pixel_shader(PixelStageInput input, out float4 shaded : SV_Target0 )
{
	shaded = Outline.Color;
}
