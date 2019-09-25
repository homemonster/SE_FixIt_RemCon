struct VertexStageOutput
{
    float4 position : SV_Position;
    MaterialVertexPayload custom;

    float3 key_color : TEXCOORD7;
    float2 custom_alpha : TEXCOORD11;
#ifdef USE_SIMPLE_INSTANCING_COLORING
    float4 instance_key_color_dithering : TEXCOORD10;
#endif
};
