struct VertexStageOutput
{
    float4 position : SV_Position;
    float3 worldPosition : POSITION;
    MaterialVertexPayload custom;

    float3 key_color : TEXCOORD7;
    float2 custom_alpha : TEXCOORD9;

#ifdef USE_SIMPLE_INSTANCING_COLORING // all other key colors and and emissivities are deprecated for simple instancing
    float4 instance_key_color_dithering : TEXCOORD10;
    float4 instance_color_mult_emissivity : TEXCOORD11;
#endif
};
