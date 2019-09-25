#include <Template.hlsli>
#include <Lighting/EnvAmbient.hlsli>
#include <Postprocess/PostprocessBase.hlsli>

cbuffer Constants : register( b1 )
{
    float factor;
}

Texture2D<float4>	SrcA0	: register( t0 );
Texture2D<float4>	SrcA1	: register( t1 );
Texture2D<float4>	SrcA2	: register( t2 );
Texture2D<float4>	SrcA3	: register( t3 );
Texture2D<float4>	SrcA4	: register( t4 );
Texture2D<float4>	SrcA5	: register( t5 );
Texture2D<float4>	SrcB0	: register( t6 );
Texture2D<float4>	SrcB1	: register( t7 );
Texture2D<float4>	SrcB2	: register( t8 );
Texture2D<float4>	SrcB3	: register( t9 );
Texture2D<float4>	SrcB4	: register( t10 );
Texture2D<float4>	SrcB5	: register( t11 );

void __pixel_shader(PostprocessVertex vertex, 
    out float4 output0 : SV_Target0,
    out float4 output1 : SV_Target1,
    out float4 output2 : SV_Target2,
    out float4 output3 : SV_Target3,
    out float4 output4 : SV_Target4,
    out float4 output5 : SV_Target5) 
{
    output0 = lerp(SrcA0[vertex.position.xy], SrcB0[vertex.position.xy], factor);
    output1 = lerp(SrcA1[vertex.position.xy], SrcB1[vertex.position.xy], factor);
    output2 = lerp(SrcA2[vertex.position.xy], SrcB2[vertex.position.xy], factor);
    output3 = lerp(SrcA3[vertex.position.xy], SrcB3[vertex.position.xy], factor);
    output4 = lerp(SrcA4[vertex.position.xy], SrcB4[vertex.position.xy], factor);
    output5 = lerp(SrcA5[vertex.position.xy], SrcB5[vertex.position.xy], factor);
}
