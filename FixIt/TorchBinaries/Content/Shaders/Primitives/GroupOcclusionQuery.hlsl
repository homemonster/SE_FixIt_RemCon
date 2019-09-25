#include <frame.hlsli>

struct ProjectionConstants
{
    matrix ViewProjMatrix;
};

cbuffer Projection : register(MERGE(b, PROJECTION_SLOT))
{
    ProjectionConstants Projection;
};

struct VertexInput
{
	float3 Min : TEXCOORD0;
	float3 Extents : TEXCOORD1;
};
Texture2D<float>      g_DepthTexture                    : register(t0);

struct VertexInOut 
{
	float4 position	: SV_Position;
    float3 color : COLOR0;
};

void __vertex_shader(VertexInput input, out VertexInOut output, uint VertexId : SV_VertexID)
{
    const float3 cubeOffsets[] = 
    {
        float3(0, 1.f, 1.f),     // Front-top-left
        float3(1.f, 1.f, 1.f),      // Front-top-right
        float3(0, 0, 1.f),   // Front-bottom-left
        float3(1.f, 0, 1.f),    // Front-bottom-right
        float3(1.f, 0, 0),   // Back-bottom-right
        float3(1.f, 1.f, 1.f),     // Front-top-right
        float3(1.f, 1.f, 0),    // Back-top-right
        float3(0, 1.f, 1.f),    // Front-top-left
        float3(0, 1.f, 0),   // Back-top-left
        float3(0, 0, 1.f),   // Front-bottom-left
        float3(0, 0, 0),  // Back-bottom-left
        float3(1.f, 0, 0),   // Back-bottom-right
        float3(0, 1.f, 0),   // Back-top-left
        float3(1.f, 1.f, 0)      // Back-top-right
    };
    uint cornerIndex = VertexId % 14;
    float3 offset = cubeOffsets[cornerIndex];
    float3 position = input.Min + offset * abs(input.Extents);
    output.position = mul(float4(position, 1), Projection.ViewProjMatrix);
    output.color = any(input.Extents < 0) ? float3(1, 0, 0) : float3(0, 1, 0);
}

void __pixel_shader(VertexInOut input, out float4 output : SV_Target0)
{
    output = float4(input.color, 1);
}
