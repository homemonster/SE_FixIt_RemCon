#line 1 ""


#line 11


#line 1 "ConstantBuffers.hlsli"


#line 11





#line 1 "SharedDefines.hlsli"


#line 12




#line 17




#line 22




#line 27













#line 28 "ConstantBuffers.hlsli"












#line 44
#pragma pack_matrix(row_major)
cbuffer 
#line 44
GlobalConstantBuffer : register ( b0 ) 
{ 
    float2 g_f2InvQuarterResolution ; 
    float2 g_f2InvFullResolution ; 
    
    float2 g_f2UVToViewA ; 
    float2 g_f2UVToViewB ; 
    
    float g_fRadiusToScreen ; 
    float g_fR2 ; 
    float g_fNegInvR2 ; 
    float g_fNDotVBias ; 
    
    float g_fSmallScaleAOAmount ; 
    float g_fLargeScaleAOAmount ; 
    float g_fPowExponent ; 
    int g_iUnused ; 
    
    float g_fBlurViewDepth0 ; 
    float g_fBlurViewDepth1 ; 
    float g_fBlurSharpness0 ; 
    float g_fBlurSharpness1 ; 
    
    float g_fLinearizeDepthA ; 
    float g_fLinearizeDepthB ; 
    float g_fInverseDepthRangeA ; 
    float g_fInverseDepthRangeB ; 
    
    float2 g_f2InputViewportTopLeft ; 
    float g_fViewDepthThresholdNegInv ; 
    float g_fViewDepthThresholdSharpness ; 
    
    float g_fBackgroundAORadiusPixels ; 
    float g_fForegroundAORadiusPixels ; 
    int g_iDebugNormalComponent ; 
    ; 
    
#line 82
    float4x4 g_f44NormalMatrix ; 
    float g_fNormalDecodeScale ; 
    float g_fNormalDecodeBias ; 
    ; 
} ; 

#line 89
struct PerPassConstantStruct 
{ 
    float4 f4Jitter ; 
    
    float2 f2Offset ; 
    float fSliceIndex ; 
    unsigned int uSliceIndex ; 
} ; 

cbuffer PerPassConstantBuffer : register ( b1 ) 
{ 
    PerPassConstantStruct g_PerPassConstants ; 
} ; 

#line 104


#line 109





#line 12 ""


#line 1 "FullScreenTriangle_Common.hlsli"


#line 11


#line 1 "ConstantBuffers.hlsli"


#line 111



#line 12 "FullScreenTriangle_Common.hlsli"


#line 1 "Postprocess/Postprocess.hlsli"


#line 1 "PostprocessBase.hlsli"



struct PostprocessVertex 
{ 
    float4 position : SV_Position ; 
    float2 uv : TEXCOORD0 ; 
} ; 




#line 3 "Postprocess/Postprocess.hlsli"

Texture2D Source : register ( t0 ) ; 
Texture2D < uint2 > Stencil : register ( t1 ) ; 

#line 9



#line 15 "FullScreenTriangle_Common.hlsli"
void AddViewportOrigin ( inout PostprocessVertex IN ) 
{ 
    IN . position . xy += g_f2InputViewportTopLeft ; 
    IN . uv = IN . position . xy * g_f2InvFullResolution ; 
} 

#line 22
void SubtractViewportOrigin ( inout PostprocessVertex IN ) 
{ 
    IN . position . xy -= g_f2InputViewportTopLeft ; 
    IN . uv = IN . position . xy * g_f2InvFullResolution ; 
} 


#line 16 ""


Texture2D < float > DepthTexture : register ( t0 ) ; 
sampler PointClampSampler : register ( s0 ) ; 

#line 22
struct PSOutputDepthTextures 
{ 
    float Z00 : SV_Target0 ; 
    float Z10 : SV_Target1 ; 
    float Z20 : SV_Target2 ; 
    float Z30 : SV_Target3 ; 
    
    float Z01 : SV_Target4 ; 
    float Z11 : SV_Target5 ; 
    float Z21 : SV_Target6 ; 
    float Z31 : SV_Target7 ; 
    
} ; 

#line 37
PSOutputDepthTextures __pixel_shader ( PostprocessVertex IN ) 
{ 
    PSOutputDepthTextures OUT ; 
    
    IN . position . xy = floor ( IN . position . xy ) * 4.0 + ( g_PerPassConstants . f2Offset + 0.5 ) ; 
    IN . uv = IN . position . xy * g_f2InvFullResolution ; 
    
#line 45
    float4 S0 = DepthTexture . GatherRed ( PointClampSampler , IN . uv ) ; 
    float4 S1 = DepthTexture . GatherRed ( PointClampSampler , IN . uv , int2 ( 2 , 0 ) ) ; 
    
    OUT . Z00 = S0 . w ; 
    OUT . Z10 = S0 . z ; 
    OUT . Z20 = S1 . w ; 
    OUT . Z30 = S1 . z ; 
    
    
    OUT . Z01 = S0 . x ; 
    OUT . Z11 = S0 . y ; 
    OUT . Z21 = S1 . x ; 
    OUT . Z31 = S1 . y ; 
    
    
    return OUT ; 
} 
