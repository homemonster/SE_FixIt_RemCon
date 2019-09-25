#line 1 ""


#line 16


#line 1 "FullScreenTriangle_Common.hlsli"


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


#line 17 ""


#line 1 "ConstantBuffers.hlsli"


#line 111



#line 19 ""
Texture2D < float > DepthTexture : register ( t0 ) ; 

#line 22
float ConvertToViewDepth ( float HardwareDepth ) 
{ 
    float NormalizedDepth = saturate ( g_fInverseDepthRangeA * HardwareDepth + g_fInverseDepthRangeB ) ; 
    
#line 27
    return 1.0 / ( NormalizedDepth * g_fLinearizeDepthA + g_fLinearizeDepthB ) ; 
} 

#line 31
float __pixel_shader ( PostprocessVertex IN ) : SV_TARGET 
{ 
    AddViewportOrigin ( IN ) ; 
    
    float HardwareDepth = DepthTexture . Load ( int3 ( IN . position . xy , 0 ) ) ; 
    
    return ConvertToViewDepth ( HardwareDepth ) ; 
} 
