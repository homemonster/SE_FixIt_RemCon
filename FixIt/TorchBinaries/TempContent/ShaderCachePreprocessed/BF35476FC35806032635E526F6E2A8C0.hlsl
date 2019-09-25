#line 1 ""


#line 17


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





#line 18 ""


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


#line 20 ""
Texture2DArray < float > AOTexture : register ( t0 ) ; 
Texture2D < float > DepthTexture : register ( t1 ) ; 
sampler PointSampler : register ( s0 ) ; 

#line 25
struct PSOut 
{ 
    
#line 29
    
    float4 AO : SV_TARGET ; 
    
} ; 

#line 35
PSOut __pixel_shader ( PostprocessVertex IN ) 
{ 
    PSOut OUT ; 
    
    
    SubtractViewportOrigin ( IN ) ; 
    
    
    int2 FullResPos = int2 ( IN . position . xy ) ; 
    int2 Offset = FullResPos & 3 ; 
    int SliceId = Offset . y * 4 + Offset . x ; 
    int2 QuarterResPos = FullResPos >> 2 ; 
    
#line 52
    
    float AO = AOTexture . Load ( int4 ( QuarterResPos , SliceId , 0 ) ) ; 
    OUT . AO = pow ( saturate ( AO ) , g_fPowExponent ) ; 
    
    
    return OUT ; 
} 
