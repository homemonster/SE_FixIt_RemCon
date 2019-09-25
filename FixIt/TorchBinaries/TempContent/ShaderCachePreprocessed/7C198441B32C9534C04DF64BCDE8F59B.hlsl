#line 1 ""


#line 1 "Postprocess/PostprocessBase.hlsli"



struct PostprocessVertex 
{ 
    float4 position : SV_Position ; 
    float2 uv : TEXCOORD0 ; 
} ; 




#line 4 ""
Texture2D < float4 > g_AccumTexture : register ( t0 ) ; 

#line 7
Texture2D < float > g_CoverageTexture : register ( t1 ) ; 

#line 10
float4 __pixel_shader ( PostprocessVertex input ) : SV_Target0 
{ 
    float4 accum = g_AccumTexture [ int2 ( input . position . xy ) ] ; 
    float reveal = g_CoverageTexture [ int2 ( input . position . xy ) ] ; 
    
    float3 averageColor = clamp ( accum . rgb / max ( accum . a , 1e-3 ) , 0 , 1e+10 ) ; 
    float alpha = 1 - reveal ; 
    
#line 19
    return float4 ( averageColor * alpha , reveal . r ) ; 
} 
