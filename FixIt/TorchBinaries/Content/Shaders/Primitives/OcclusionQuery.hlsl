#include <frame.hlsli>

struct VertexInput
{
	float4 Position : TEXCOORD0;
	float Shift : TEXCOORD1;
};
Texture2D<float>      g_DepthTexture                    : register(t0);

struct VertexInOut 
{
	float4 position	: SV_Position;
};

void __vertex_shader(VertexInput input, out VertexInOut output, uint VertexId : SV_VertexID)
{
    const float2 offsets[ 4 ] =
    {
        float2(-1, 1),
        float2(1, 1),
        float2(-1, -1),
        float2(1, -1),
    };
    uint cornerIndex = VertexId % 4;
    float2 offset = offsets[cornerIndex];
    // collective billboarding
    float4 position = input.Position;
    position.xyz -= normalize(position.xyz) * input.Shift;

    float3 cameraFacingPos = mul(float4(position.xyz, 1), frame_.Environment.view_matrix).xyz;
    cameraFacingPos.xy += position.w * offset / 2;
    output.position = mul(float4(cameraFacingPos, 1), frame_.Environment.projection_matrix);
}

void __pixel_shader(VertexInOut input, out float4 output : SV_Target0)
{
	output = 1;
}
