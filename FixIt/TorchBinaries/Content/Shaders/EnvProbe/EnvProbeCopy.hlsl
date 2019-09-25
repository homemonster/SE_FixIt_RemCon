#include <Template.hlsli>
#include <Lighting/EnvAmbient.hlsli>
#include <Postprocess/PostprocessBase.hlsli>

Texture2D<float3>	Src0	: register( t0 );
Texture2D<float3>	Src1	: register( t1 );
Texture2D<float3>	Src2	: register( t2 );
Texture2D<float3>	Src3	: register( t3 );
Texture2D<float3>	Src4	: register( t4 );
Texture2D<float3>	Src5	: register( t5 );

void __pixel_shader(PostprocessVertex vertex, 
    out float3 output0 : SV_Target0,
    out float3 output1 : SV_Target1,
    out float3 output2 : SV_Target2,
    out float3 output3 : SV_Target3,
    out float3 output4 : SV_Target4,
    out float3 output5 : SV_Target5) 
{
    output0 = Src0[vertex.position.xy];
    output1 = Src1[vertex.position.xy];
    output2 = Src2[vertex.position.xy];
    output3 = Src3[vertex.position.xy];
    output4 = Src4[vertex.position.xy];
    output5 = Src5[vertex.position.xy];
}
