#line 1 ""


#line 22


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





#line 23 ""


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


#line 24 ""


#line 1 "FetchNormal_Common.hlsli"


#line 11


#line 1 "ConstantBuffers.hlsli"


#line 111



#line 12 "FetchNormal_Common.hlsli"


#line 1 "VertexTransformations.hlsli"



float4 unpack_position_and_scale ( float4 position ) 
{ 
    return float4 ( position . xyz * position . w , 1 ) ; 
} 

float4 unpack_voxel_position ( float3 packed ) 
{ 
    return float4 ( packed . xyz , 1 ) ; 
} 

float voxel_morphing ( float3 position_a , float2 bounds , float3 local_viewer ) 
{ 
    float3 diff = abs ( position_a - local_viewer ) ; 
    float dist = max ( diff . x , max ( diff . y , diff . z ) ) ; 
    return saturate ( ( ( dist - bounds . x ) / ( bounds . y - bounds . x ) - 0.35f ) * 2.0f ) ; 
    
    return 0 ; 
} 

float3 unpack_voxel_weights ( int index ) 
{ 
    
    
#line 33
    return float3 ( step ( index , 0 ) , step ( abs ( index - 1 ) , 0 ) , step ( 2 , index ) ) ; 
    
#line 37
    
} 

float unpack_voxel_ao ( float ambient_occlusion ) 
{ 
    return frac ( ambient_occlusion * 8.0f ) ; 
} 

float4 unpack_color_shift_hsv ( int4 colorshift ) { 
    int hue = ( colorshift . w << 8 ) | ( 0xFF & colorshift . z ) ; 
    return float4 ( hue , colorshift . y , colorshift . x , 0 ) / float4 ( 360 , 100 , 100 , 1 ) ; 
} 

#line 62
float3 unpack_normal ( uint2 p ) 
{ 
    float zsign = - 1 ; 
    if ( p . x > 32767 ) 
    { 
        zsign = 1 ; 
        p . x &= ( 1 << 15 ) - 1 ; 
    } 
    float3 normal = float3 ( ( ( float ) p . x ) / 32767 , ( ( float ) p . y ) / 32767 , 0 ) ; 
    normal . xy = 2 * normal . xy - 1 ; 
    normal . z = zsign * sqrt ( saturate ( 1 - dot ( normal . xy , normal . xy ) ) ) ; 
    return normal ; 
} 

#line 77
float4 unpack_tangent_sign ( float4 p ) 
{ 
    float sign = p . w > 0.5f ? 1 : - 1 ; 
    float zsign = p . y > 0.5f ? 1 : - 1 ; 
    if ( zsign > 0 ) p . y -= 0.5f ; 
    if ( sign > 0 ) p . w -= 0.5f ; 
    float2 xy = 256 * ( p . xz + 256 * p . yw ) ; 
    xy /= 32767 ; 
    xy = 2 * xy - 1 ; 
    return float4 ( xy . xy , zsign * sqrt ( saturate ( 1 - dot ( xy , xy ) ) ) , sign ) ; 
} 

#line 91
float2 pack_normals2 ( float3 n ) 
{ 
    float p = sqrt ( n . z * 8 + 8 ) ; 
    return float2 ( n . xy / p + 0.5 ) ; 
} 

#line 98
float3 unpack_normals2 ( float2 enc ) 
{ 
    float2 fenc = enc * 4 - 2 ; 
    float f = dot ( fenc , fenc ) ; 
    float g = sqrt ( 1 - f / 4 ) ; 
    float3 n ; 
    n . xy = fenc * g ; 
    n . z = 1 - f / 2 ; 
    return n ; 
} 

matrix translation_rotation_matrix ( float3 translation , float3 forward , float3 up ) 
{ 
    float3 right = cross ( up , - forward ) ; 
    
    matrix M = { float4 ( right , 0 ) , float4 ( up , 0 ) , float4 ( - forward , 0 ) , float4 ( translation , 1 ) } ; 
    return M ; 
} 

matrix translation_rotation_matrix ( float4 packed ) 
{ 
    static const float3 PACKED_DIR [ 6 ] = { float3 ( 0 , 0 , - 1 ) , float3 ( 0 , 0 , 1 ) , float3 ( - 1 , 0 , 0 ) , float3 ( 1 , 0 , 0 ) , float3 ( 0 , 1 , 0 ) , float3 ( 0 , - 1 , 0 ) } ; 
    
    float val = packed . w ; 
    
    float3 forward = PACKED_DIR [ val / 6 ] ; 
    float3 up = PACKED_DIR [ val - ( uint ) ( val / 6 ) * 6 ] ; 
    
    return translation_rotation_matrix ( packed . xyz , forward , up ) ; 
} 

matrix construct_cube_instance_matrix ( float4 cube_transformation ) { 
    
    return translation_rotation_matrix ( cube_transformation ) ; 
} 

#line 135
float3 unpack_bone ( float4 position , float range ) 
{ 
    static const float eps = 0.5 / 255 ; 
    return ( position . xyz + eps - 0.5 ) * range * 2 ; 
} 

matrix construct_deformed_cube_instance_matrix ( 
float4 packed0 , float4 packed1 , float4 packed2 , float4 packed3 , 
float4 packed4 , float4 packed5 , float4 packed6 , float4 packed7 , 
float4 cube_transformation , 
uint4 blend_indices , float4 blend_weights 
) 
{ 
    matrix M = translation_rotation_matrix ( cube_transformation ) ; 
    
    [ branch ] 
    if ( packed3 . w ) 
    { 
        float4 bones [ 9 ] = { 
            packed0 , packed1 , packed2 , 
            packed3 , packed4 , packed5 , 
            packed6 , packed7 , float4 ( packed0 . w , packed1 . w , packed2 . w , 0 ) 
        } ; 
        
        matrix B = { bones [ blend_indices [ 0 ] ] , bones [ blend_indices [ 1 ] ] , bones [ blend_indices [ 2 ] ] , bones [ blend_indices [ 3 ] ] } ; 
        float4 translation = mul ( blend_weights , B ) ; 
        M . _41_42_43 += unpack_bone ( translation , packed4 . w / 10.f * 255.f ) ; 
    } 
    
    return M ; 
} 




#line 14 "FetchNormal_Common.hlsli"

Texture2D < float3 > FullResNormalTexture : register ( t1 ) ; 

#line 18


#line 21

float3 FetchFullResViewNormal_GBuffer ( PostprocessVertex IN ) 
{ 
    float2 PackedNormal = FullResNormalTexture [ IN . position . xy ] . xy ; 
    float3 ViewNormal = unpack_normals2 ( PackedNormal ) ; 
    ViewNormal . z = - ViewNormal . z ; 
    
#line 29
    return ViewNormal ; 
} 


float3 FetchFullResViewNormal ( PostprocessVertex IN ) 
{ 
    
#line 38
    
    return normalize ( FetchFullResViewNormal_GBuffer ( IN ) ) ; 
    
} 


#line 28 ""
struct GSOut 
{ 
    float4 pos : SV_Position ; 
    float2 uv : TEXCOORD0 ; 
    uint LayerIndex : SV_RenderTargetArrayIndex ; 
} ; 

[ maxvertexcount ( 3 ) ] 
void __geometry_shader ( triangle PostprocessVertex input [ 3 ] , inout TriangleStream < GSOut > OUT ) 
{ 
    GSOut OutVertex ; 
    
    OutVertex . LayerIndex = g_PerPassConstants . uSliceIndex ; 
    
    [ unroll ] 
    for ( int VertexID = 0 ; VertexID < 3 ; VertexID ++ ) 
    { 
        OutVertex . uv = input [ VertexID ] . uv ; 
        OutVertex . pos = input [ VertexID ] . position ; 
        OUT . Append ( OutVertex ) ; 
    } 
} 

#line 53
Texture2DArray < float > QuarterResDepthTexture : register ( t0 ) ; 

sampler PointClampSampler : register ( s0 ) ; 

#line 59
float3 UVToView ( float2 UV , float ViewDepth ) 
{ 
    UV = g_f2UVToViewA * UV + g_f2UVToViewB ; 
    return float3 ( UV * ViewDepth , ViewDepth ) ; 
} 

#line 66
float3 FetchQuarterResViewPos ( float2 UV ) 
{ 
    float fSliceIndex = 0 ; 
    float ViewDepth = QuarterResDepthTexture . SampleLevel ( PointClampSampler , float3 ( UV , fSliceIndex ) , 0 ) ; 
    return UVToView ( UV , ViewDepth ) ; 
} 

#line 74
float2 RotateDirection ( float2 Dir , float2 CosSin ) 
{ 
    return float2 ( Dir . x * CosSin . x - Dir . y * CosSin . y , 
    Dir . x * CosSin . y + Dir . y * CosSin . x ) ; 
} 

#line 81
float DepthThresholdFactor ( float ViewDepth ) 
{ 
    return saturate ( ( ViewDepth * g_fViewDepthThresholdNegInv + 1.0 ) * g_fViewDepthThresholdSharpness ) ; 
} 

#line 87
struct AORadiusParams 
{ 
    float fRadiusPixels ; 
    float fNegInvR2 ; 
} ; 

#line 94
void ScaleAORadius ( inout AORadiusParams Params , float ScaleFactor ) 
{ 
    Params . fRadiusPixels *= ScaleFactor ; 
    Params . fNegInvR2 *= 1.0 / ( ScaleFactor * ScaleFactor ) ; 
} 

#line 101
AORadiusParams GetAORadiusParams ( float ViewDepth ) 
{ 
    AORadiusParams Params ; 
    Params . fRadiusPixels = g_fRadiusToScreen / ViewDepth ; 
    Params . fNegInvR2 = g_fNegInvR2 ; 
    
    
    ScaleAORadius ( Params , clamp ( g_fBackgroundAORadiusPixels / Params . fRadiusPixels , 1.0 , 150.0 ) ) ; 
    
    
    
    ScaleAORadius ( Params , min ( 1.0 , g_fForegroundAORadiusPixels / Params . fRadiusPixels ) ) ; 
    
    
    return Params ; 
} 

#line 119
float Falloff ( float DistanceSquare , AORadiusParams Params ) 
{ 
    
    return DistanceSquare * Params . fNegInvR2 + 1.0 ; 
} 

#line 130
float ComputeAO ( float3 P , float3 N , float3 S , AORadiusParams Params ) 
{ 
    float3 V = S - P ; 
    float VdotV = dot ( V , V ) ; 
    float NdotV = dot ( N , V ) * rsqrt ( VdotV ) ; 
    
#line 137
    return saturate ( NdotV - g_fNDotVBias ) * saturate ( Falloff ( VdotV , Params ) ) ; 
} 

#line 141
float ComputeCoarseAO ( float2 FullResUV , float3 ViewPosition , float3 ViewNormal , AORadiusParams Params ) 
{ 
    
    float StepSizePixels = ( Params . fRadiusPixels / 4.0 ) / ( 4 + 1 ) ; 
    
    
    float4 Rand = g_PerPassConstants . f4Jitter ; 
    
#line 150
    
    
    const float Alpha = 2.0 * 3.14159265f / 8 ; 
    float SmallScaleAO = 0 ; 
    float LargeScaleAO = 0 ; 
    
    [ unroll ] 
    for ( float DirectionIndex = 0 ; DirectionIndex < 8 ; ++ DirectionIndex ) 
    { 
        float Angle = Alpha * DirectionIndex ; 
        
#line 162
        float2 Direction = RotateDirection ( float2 ( cos ( Angle ) , sin ( Angle ) ) , Rand . xy ) ; 
        
#line 165
        float RayPixels = ( Rand . z * StepSizePixels + 1.0 ) ; 
        
        { 
            float2 SnappedUV = round ( RayPixels * Direction ) * g_f2InvQuarterResolution + FullResUV ; 
            float3 S = FetchQuarterResViewPos ( SnappedUV ) ; 
            RayPixels += StepSizePixels ; 
            
            SmallScaleAO += ComputeAO ( ViewPosition , ViewNormal , S , Params ) ; 
        } 
        
        [ unroll ] 
        for ( float StepIndex = 1 ; StepIndex < 4 ; ++ StepIndex ) 
        { 
            float2 SnappedUV = round ( RayPixels * Direction ) * g_f2InvQuarterResolution + FullResUV ; 
            float3 S = FetchQuarterResViewPos ( SnappedUV ) ; 
            RayPixels += StepSizePixels ; 
            
            LargeScaleAO += ComputeAO ( ViewPosition , ViewNormal , S , Params ) ; 
        } 
    } 
    
    float AO = ( SmallScaleAO * g_fSmallScaleAOAmount ) + ( LargeScaleAO * g_fLargeScaleAOAmount ) ; 
    
    AO /= ( 8 * 4 ) ; 
    return AO ; 
} 

#line 193
float __pixel_shader ( PostprocessVertex IN ) : SV_TARGET 
{ 
    IN . position . xy = floor ( IN . position . xy ) * 4.0 + g_PerPassConstants . f2Offset ; 
    IN . uv = IN . position . xy * ( g_f2InvQuarterResolution / 4.0 ) ; 
    
#line 199
    float3 ViewPosition = FetchQuarterResViewPos ( IN . uv ) ; 
    float3 ViewNormal = FetchFullResViewNormal ( IN ) ; 
    
    AORadiusParams Params = GetAORadiusParams ( ViewPosition . z ) ; 
    
#line 205
    [ branch ] 
    if ( Params . fRadiusPixels < 1.0 ) 
    { 
        return 1.0 ; 
    } 
    
    float AO = ComputeCoarseAO ( IN . uv , ViewPosition , ViewNormal , Params ) ; 
    
    
    AO *= DepthThresholdFactor ( ViewPosition . z ) ; 
    
    
#line 218
    return saturate ( 1.0 - AO * 2.0 ) ; 
    
} 
