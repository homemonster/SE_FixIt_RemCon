#include <Postprocess/PostprocessBase.hlsli>

// The opaque scene depth buffer read as a texture
Texture2D<float4>     g_AccumTexture                    : register(t0);

// The texture atlas for the particles
Texture2D<float>     g_CoverageTexture                 : register(t1);

// Ratserization path's pixel shader
float4 __pixel_shader(PostprocessVertex input) : SV_Target0
{ 
    float4 accum = g_AccumTexture[int2(input.position.xy)];
    float reveal = g_CoverageTexture[int2(input.position.xy)];

    float3 averageColor = clamp(accum.rgb / max(accum.a, 1e-3), 0, 1e+10);
    float alpha = 1 - reveal;

    //  ONE, SRC_ALPHA
    return float4(averageColor * alpha, reveal.r);
}
