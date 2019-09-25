#line 1 ""


#line 1 "Debug.hlsli"


#line 1 "Postprocess/PostprocessBase.hlsli"



struct PostprocessVertex 
{ 
    float4 position : SV_Position ; 
    float2 uv : TEXCOORD0 ; 
} ; 




#line 2 "Debug.hlsli"


#line 1 "GBuffer/GBuffer.hlsli"


#line 1 "Lighting/Utils.hlsli"



static const float DIELECTRIC_F0 = 0.04f ; 

float3 SurfaceAlbedo ( float3 baseColor , float metalness ) 
{ 
    return baseColor * ( 1 - metalness ) ; 
} 

float3 SurfaceF0 ( float3 baseColor , float metalness ) 
{ 
    return lerp ( DIELECTRIC_F0 , baseColor , metalness ) ; 
} 

float GlossToRoughness ( float gloss ) 
{ 
    return 1.0f - gloss ; 
} 

float RoughnessToGloss ( float roughness ) 
{ 
    return 1.0f - roughness ; 
} 

float remap_gloss ( float g ) 
{ 
    float r = GlossToRoughness ( g ) ; 
    return r * r ; 
} 

float RoughnessToSpecular ( float roughness ) 
{ 
    return mad ( 2.0f , pow ( roughness , - 2.0f ) , - 2.0f ) ; 
} 

float SpecularToGloss ( float specular ) 
{ 
    return mad ( - sqrt ( 2.0f ) , sqrt ( rcp ( specular + 2.0f ) ) , 1.0f ) ; 
} 

float GlossToSpecular ( float gloss ) 
{ 
    return RoughnessToSpecular ( GlossToRoughness ( gloss ) ) ; 
} 



#line 47


#line 2 "GBuffer/GBuffer.hlsli"


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




#line 3 "GBuffer/GBuffer.hlsli"


#line 1 "PixelUtils.hlsli"





#line 1 "Common.hlsli"





#line 1 "D3DX_DXGIFormatConvert.inl"


#line 199







typedef int INT ; 
typedef uint UINT ; 

typedef float2 XMFLOAT2 ; 
typedef float3 XMFLOAT3 ; 
typedef float4 XMFLOAT4 ; 
typedef int2 XMINT2 ; 
typedef int4 XMINT4 ; 
typedef uint2 XMUINT2 ; 
typedef uint4 XMUINT4 ; 







#line 279


#line 287
FLOAT D3DX_SRGB_to_FLOAT_inexact ( precise FLOAT val ) 
{ 
    if ( val < 0.04045f ) 
    val /= 12.92f ; 
    else 
    val = pow ( ( val + 0.055f ) / 1.055f , 2.4f ) ; 
    return val ; 
} 

static const UINT D3DX_SRGBTable [ ] = 
{ 
    0x00000000 , 0x399f22b4 , 0x3a1f22b4 , 0x3a6eb40e , 0x3a9f22b4 , 0x3ac6eb61 , 0x3aeeb40e , 0x3b0b3e5d , 
    0x3b1f22b4 , 0x3b33070b , 0x3b46eb61 , 0x3b5b518d , 0x3b70f18d , 0x3b83e1c6 , 0x3b8fe616 , 0x3b9c87fd , 
    0x3ba9c9b7 , 0x3bb7ad6f , 0x3bc63549 , 0x3bd56361 , 0x3be539c1 , 0x3bf5ba70 , 0x3c0373b5 , 0x3c0c6152 , 
    0x3c15a703 , 0x3c1f45be , 0x3c293e6b , 0x3c3391f7 , 0x3c3e4149 , 0x3c494d43 , 0x3c54b6c7 , 0x3c607eb1 , 
    0x3c6ca5df , 0x3c792d22 , 0x3c830aa8 , 0x3c89af9f , 0x3c9085db , 0x3c978dc5 , 0x3c9ec7c2 , 0x3ca63433 , 
    0x3cadd37d , 0x3cb5a601 , 0x3cbdac20 , 0x3cc5e639 , 0x3cce54ab , 0x3cd6f7d5 , 0x3cdfd010 , 0x3ce8ddb9 , 
    0x3cf2212c , 0x3cfb9ac1 , 0x3d02a569 , 0x3d0798dc , 0x3d0ca7e6 , 0x3d11d2af , 0x3d171963 , 0x3d1c7c2e , 
    0x3d21fb3c , 0x3d2796b2 , 0x3d2d4ebb , 0x3d332380 , 0x3d39152b , 0x3d3f23e3 , 0x3d454fd1 , 0x3d4b991c , 
    0x3d51ffef , 0x3d58846a , 0x3d5f26b7 , 0x3d65e6fe , 0x3d6cc564 , 0x3d73c20f , 0x3d7add29 , 0x3d810b67 , 
    0x3d84b795 , 0x3d887330 , 0x3d8c3e4a , 0x3d9018f6 , 0x3d940345 , 0x3d97fd4a , 0x3d9c0716 , 0x3da020bb , 
    0x3da44a4b , 0x3da883d7 , 0x3daccd70 , 0x3db12728 , 0x3db59112 , 0x3dba0b3b , 0x3dbe95b5 , 0x3dc33092 , 
    0x3dc7dbe2 , 0x3dcc97b6 , 0x3dd1641f , 0x3dd6412c , 0x3ddb2eef , 0x3de02d77 , 0x3de53cd5 , 0x3dea5d19 , 
    0x3def8e52 , 0x3df4d091 , 0x3dfa23e8 , 0x3dff8861 , 0x3e027f07 , 0x3e054280 , 0x3e080ea3 , 0x3e0ae378 , 
    0x3e0dc105 , 0x3e10a754 , 0x3e13966b , 0x3e168e52 , 0x3e198f10 , 0x3e1c98ad , 0x3e1fab30 , 0x3e22c6a3 , 
    0x3e25eb09 , 0x3e29186c , 0x3e2c4ed0 , 0x3e2f8e41 , 0x3e32d6c4 , 0x3e362861 , 0x3e39831e , 0x3e3ce703 , 
    0x3e405416 , 0x3e43ca5f , 0x3e4749e4 , 0x3e4ad2ae , 0x3e4e64c2 , 0x3e520027 , 0x3e55a4e6 , 0x3e595303 , 
    0x3e5d0a8b , 0x3e60cb7c , 0x3e6495e0 , 0x3e6869bf , 0x3e6c4720 , 0x3e702e0c , 0x3e741e84 , 0x3e781890 , 
    0x3e7c1c38 , 0x3e8014c2 , 0x3e82203c , 0x3e84308d , 0x3e8645ba , 0x3e885fc5 , 0x3e8a7eb2 , 0x3e8ca283 , 
    0x3e8ecb3d , 0x3e90f8e1 , 0x3e932b74 , 0x3e9562f8 , 0x3e979f71 , 0x3e99e0e2 , 0x3e9c274e , 0x3e9e72b7 , 
    0x3ea0c322 , 0x3ea31892 , 0x3ea57308 , 0x3ea7d289 , 0x3eaa3718 , 0x3eaca0b7 , 0x3eaf0f69 , 0x3eb18333 , 
    0x3eb3fc18 , 0x3eb67a18 , 0x3eb8fd37 , 0x3ebb8579 , 0x3ebe12e1 , 0x3ec0a571 , 0x3ec33d2d , 0x3ec5da17 , 
    0x3ec87c33 , 0x3ecb2383 , 0x3ecdd00b , 0x3ed081cd , 0x3ed338cc , 0x3ed5f50b , 0x3ed8b68d , 0x3edb7d54 , 
    0x3ede4965 , 0x3ee11ac1 , 0x3ee3f16b , 0x3ee6cd67 , 0x3ee9aeb6 , 0x3eec955d , 0x3eef815d , 0x3ef272ba , 
    0x3ef56976 , 0x3ef86594 , 0x3efb6717 , 0x3efe6e02 , 0x3f00bd2d , 0x3f02460e , 0x3f03d1a7 , 0x3f055ff9 , 
    0x3f06f106 , 0x3f0884cf , 0x3f0a1b56 , 0x3f0bb49b , 0x3f0d50a0 , 0x3f0eef67 , 0x3f1090f1 , 0x3f12353e , 
    0x3f13dc51 , 0x3f15862b , 0x3f1732cd , 0x3f18e239 , 0x3f1a946f , 0x3f1c4971 , 0x3f1e0141 , 0x3f1fbbdf , 
    0x3f21794e , 0x3f23398e , 0x3f24fca0 , 0x3f26c286 , 0x3f288b41 , 0x3f2a56d3 , 0x3f2c253d , 0x3f2df680 , 
    0x3f2fca9e , 0x3f31a197 , 0x3f337b6c , 0x3f355820 , 0x3f3737b3 , 0x3f391a26 , 0x3f3aff7c , 0x3f3ce7b5 , 
    0x3f3ed2d2 , 0x3f40c0d4 , 0x3f42b1be , 0x3f44a590 , 0x3f469c4b , 0x3f4895f1 , 0x3f4a9282 , 0x3f4c9201 , 
    0x3f4e946e , 0x3f5099cb , 0x3f52a218 , 0x3f54ad57 , 0x3f56bb8a , 0x3f58ccb0 , 0x3f5ae0cd , 0x3f5cf7e0 , 
    0x3f5f11ec , 0x3f612eee , 0x3f634eef , 0x3f6571e9 , 0x3f6797e3 , 0x3f69c0d6 , 0x3f6beccd , 0x3f6e1bbf , 
    0x3f704db8 , 0x3f7282af , 0x3f74baae , 0x3f76f5ae , 0x3f7933b9 , 0x3f7b74c6 , 0x3f7db8e0 , 0x3f800000 
} ; 

FLOAT D3DX_SRGB_to_FLOAT ( UINT val ) 
{ 
    
    return asfloat ( D3DX_SRGBTable [ val ] ) ; 
    
#line 338
    
} 

FLOAT D3DX_FLOAT_to_SRGB ( precise FLOAT val ) 
{ 
    if ( val < 0.0031308f ) 
    val *= 12.92f ; 
    else 
    val = 1.055f * pow ( val , 1.0f / 2.4f ) - 0.055f ; 
    return val ; 
} 

FLOAT D3DX_SaturateSigned_FLOAT ( FLOAT _V ) 
{ 
    if ( isnan ( _V ) ) 
    { 
        return 0 ; 
    } 
    
    return min ( max ( _V , - 1 ) , 1 ) ; 
} 

UINT D3DX_FLOAT_to_UINT ( FLOAT _V , 
FLOAT _Scale ) 
{ 
    return ( UINT ) floor ( _V * _Scale + 0.5f ) ; 
} 

FLOAT D3DX_INT_to_FLOAT ( INT _V , 
FLOAT _Scale ) 
{ 
    FLOAT Scaled = ( FLOAT ) _V / _Scale ; 
    
#line 375
    return max ( Scaled , - 1.0f ) ; 
} 

INT D3DX_FLOAT_to_INT ( FLOAT _V , 
FLOAT _Scale ) 
{ 
    return ( INT ) trunc ( _V * _Scale + ( _V >= 0 ? 0.5f : - 0.5f ) ) ; 
} 

#line 390
XMFLOAT4 D3DX_R10G10B10A2_UNORM_to_FLOAT4 ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    unpackedOutput . x = ( FLOAT ) ( packedInput & 0x000003ff ) / 1023 ; 
    unpackedOutput . y = ( FLOAT ) ( ( ( packedInput >> 10 ) & 0x000003ff ) ) / 1023 ; 
    unpackedOutput . z = ( FLOAT ) ( ( ( packedInput >> 20 ) & 0x000003ff ) ) / 1023 ; 
    unpackedOutput . w = ( FLOAT ) ( ( ( packedInput >> 30 ) & 0x00000003 ) ) / 3 ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT4_to_R10G10B10A2_UNORM ( precise XMFLOAT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . x ) , 1023 ) ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . y ) , 1023 ) << 10 ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . z ) , 1023 ) << 20 ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . w ) , 3 ) << 30 ) ) ; 
    return packedOutput ; 
} 

#line 413
XMUINT4 D3DX_R10G10B10A2_UINT_to_UINT4 ( UINT packedInput ) 
{ 
    XMUINT4 unpackedOutput ; 
    unpackedOutput . x = packedInput & 0x000003ff ; 
    unpackedOutput . y = ( packedInput >> 10 ) & 0x000003ff ; 
    unpackedOutput . z = ( packedInput >> 20 ) & 0x000003ff ; 
    unpackedOutput . w = ( packedInput >> 30 ) & 0x00000003 ; 
    return unpackedOutput ; 
} 

UINT D3DX_UINT4_to_R10G10B10A2_UINT ( XMUINT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . x = min ( unpackedInput . x , 0x000003ff ) ; 
    unpackedInput . y = min ( unpackedInput . y , 0x000003ff ) ; 
    unpackedInput . z = min ( unpackedInput . z , 0x000003ff ) ; 
    unpackedInput . w = min ( unpackedInput . w , 0x00000003 ) ; 
    packedOutput = ( ( unpackedInput . x ) | 
    ( ( unpackedInput . y ) << 10 ) | 
    ( ( unpackedInput . z ) << 20 ) | 
    ( ( unpackedInput . w ) << 30 ) ) ; 
    return packedOutput ; 
} 

#line 440
XMFLOAT4 D3DX_R8G8B8A8_UNORM_to_FLOAT4 ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    unpackedOutput . x = ( FLOAT ) ( packedInput & 0x000000ff ) / 255 ; 
    unpackedOutput . y = ( FLOAT ) ( ( ( packedInput >> 8 ) & 0x000000ff ) ) / 255 ; 
    unpackedOutput . z = ( FLOAT ) ( ( ( packedInput >> 16 ) & 0x000000ff ) ) / 255 ; 
    unpackedOutput . w = ( FLOAT ) ( packedInput >> 24 ) / 255 ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT4_to_R8G8B8A8_UNORM ( precise XMFLOAT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . x ) , 255 ) ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . y ) , 255 ) << 8 ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . z ) , 255 ) << 16 ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . w ) , 255 ) << 24 ) ) ; 
    return packedOutput ; 
} 

#line 463
XMFLOAT4 D3DX_R8G8B8A8_UNORM_SRGB_to_FLOAT4_inexact ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    unpackedOutput . x = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( packedInput & 0x000000ff ) ) / 255 ) ; 
    unpackedOutput . y = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( ( ( packedInput >> 8 ) & 0x000000ff ) ) ) / 255 ) ; 
    unpackedOutput . z = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( ( ( packedInput >> 16 ) & 0x000000ff ) ) ) / 255 ) ; 
    unpackedOutput . w = ( FLOAT ) ( packedInput >> 24 ) / 255 ; 
    return unpackedOutput ; 
} 

XMFLOAT4 D3DX_R8G8B8A8_UNORM_SRGB_to_FLOAT4 ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    unpackedOutput . x = D3DX_SRGB_to_FLOAT ( ( packedInput & 0x000000ff ) ) ; 
    unpackedOutput . y = D3DX_SRGB_to_FLOAT ( ( ( ( packedInput >> 8 ) & 0x000000ff ) ) ) ; 
    unpackedOutput . z = D3DX_SRGB_to_FLOAT ( ( ( ( packedInput >> 16 ) & 0x000000ff ) ) ) ; 
    unpackedOutput . w = ( FLOAT ) ( packedInput >> 24 ) / 255 ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT4_to_R8G8B8A8_UNORM_SRGB ( precise XMFLOAT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . x = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . x ) ) ; 
    unpackedInput . y = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . y ) ) ; 
    unpackedInput . z = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . z ) ) ; 
    unpackedInput . w = saturate ( unpackedInput . w ) ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( unpackedInput . x , 255 ) ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . y , 255 ) << 8 ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . z , 255 ) << 16 ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . w , 255 ) << 24 ) ) ; 
    return packedOutput ; 
} 

#line 500
XMUINT4 D3DX_R8G8B8A8_UINT_to_UINT4 ( UINT packedInput ) 
{ 
    XMUINT4 unpackedOutput ; 
    unpackedOutput . x = packedInput & 0x000000ff ; 
    unpackedOutput . y = ( packedInput >> 8 ) & 0x000000ff ; 
    unpackedOutput . z = ( packedInput >> 16 ) & 0x000000ff ; 
    unpackedOutput . w = packedInput >> 24 ; 
    return unpackedOutput ; 
} 

UINT D3DX_UINT4_to_R8G8B8A8_UINT ( XMUINT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . x = min ( unpackedInput . x , 0x000000ff ) ; 
    unpackedInput . y = min ( unpackedInput . y , 0x000000ff ) ; 
    unpackedInput . z = min ( unpackedInput . z , 0x000000ff ) ; 
    unpackedInput . w = min ( unpackedInput . w , 0x000000ff ) ; 
    packedOutput = ( unpackedInput . x | 
    ( unpackedInput . y << 8 ) | 
    ( unpackedInput . z << 16 ) | 
    ( unpackedInput . w << 24 ) ) ; 
    return packedOutput ; 
} 

#line 527
XMFLOAT4 D3DX_R8G8B8A8_SNORM_to_FLOAT4 ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    XMINT4 signExtendedBits ; 
    signExtendedBits . x = ( INT ) ( packedInput << 24 ) >> 24 ; 
    signExtendedBits . y = ( INT ) ( ( packedInput << 16 ) & 0xff000000 ) >> 24 ; 
    signExtendedBits . z = ( INT ) ( ( packedInput << 8 ) & 0xff000000 ) >> 24 ; 
    signExtendedBits . w = ( INT ) ( packedInput & 0xff000000 ) >> 24 ; 
    unpackedOutput . x = D3DX_INT_to_FLOAT ( signExtendedBits . x , 127 ) ; 
    unpackedOutput . y = D3DX_INT_to_FLOAT ( signExtendedBits . y , 127 ) ; 
    unpackedOutput . z = D3DX_INT_to_FLOAT ( signExtendedBits . z , 127 ) ; 
    unpackedOutput . w = D3DX_INT_to_FLOAT ( signExtendedBits . w , 127 ) ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT4_to_R8G8B8A8_SNORM ( precise XMFLOAT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = ( ( D3DX_FLOAT_to_INT ( D3DX_SaturateSigned_FLOAT ( unpackedInput . x ) , 127 ) & 0x000000ff ) | 
    ( ( D3DX_FLOAT_to_INT ( D3DX_SaturateSigned_FLOAT ( unpackedInput . y ) , 127 ) & 0x000000ff ) << 8 ) | 
    ( ( D3DX_FLOAT_to_INT ( D3DX_SaturateSigned_FLOAT ( unpackedInput . z ) , 127 ) & 0x000000ff ) << 16 ) | 
    ( ( D3DX_FLOAT_to_INT ( D3DX_SaturateSigned_FLOAT ( unpackedInput . w ) , 127 ) ) << 24 ) ) ; 
    return packedOutput ; 
} 

#line 555
XMINT4 D3DX_R8G8B8A8_SINT_to_INT4 ( UINT packedInput ) 
{ 
    XMINT4 unpackedOutput ; 
    unpackedOutput . x = ( INT ) ( packedInput << 24 ) >> 24 ; 
    unpackedOutput . y = ( INT ) ( ( packedInput << 16 ) & 0xff000000 ) >> 24 ; 
    unpackedOutput . z = ( INT ) ( ( packedInput << 8 ) & 0xff000000 ) >> 24 ; 
    unpackedOutput . w = ( INT ) ( packedInput & 0xff000000 ) >> 24 ; 
    return unpackedOutput ; 
} 

UINT D3DX_INT4_to_R8G8B8A8_SINT ( XMINT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . x = max ( min ( unpackedInput . x , 127 ) , - 128 ) ; 
    unpackedInput . y = max ( min ( unpackedInput . y , 127 ) , - 128 ) ; 
    unpackedInput . z = max ( min ( unpackedInput . z , 127 ) , - 128 ) ; 
    unpackedInput . w = max ( min ( unpackedInput . w , 127 ) , - 128 ) ; 
    packedOutput = ( ( unpackedInput . x & 0x000000ff ) | 
    ( ( unpackedInput . y & 0x000000ff ) << 8 ) | 
    ( ( unpackedInput . z & 0x000000ff ) << 16 ) | 
    ( unpackedInput . w << 24 ) ) ; 
    return packedOutput ; 
} 

#line 582
XMFLOAT4 D3DX_B8G8R8A8_UNORM_to_FLOAT4 ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    unpackedOutput . z = ( FLOAT ) ( packedInput & 0x000000ff ) / 255 ; 
    unpackedOutput . y = ( FLOAT ) ( ( ( packedInput >> 8 ) & 0x000000ff ) ) / 255 ; 
    unpackedOutput . x = ( FLOAT ) ( ( ( packedInput >> 16 ) & 0x000000ff ) ) / 255 ; 
    unpackedOutput . w = ( FLOAT ) ( packedInput >> 24 ) / 255 ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT4_to_B8G8R8A8_UNORM ( precise XMFLOAT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . z ) , 255 ) ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . y ) , 255 ) << 8 ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . x ) , 255 ) << 16 ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . w ) , 255 ) << 24 ) ) ; 
    return packedOutput ; 
} 

#line 605
XMFLOAT4 D3DX_B8G8R8A8_UNORM_SRGB_to_FLOAT4_inexact ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    unpackedOutput . z = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( packedInput & 0x000000ff ) ) / 255 ) ; 
    unpackedOutput . y = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( ( ( packedInput >> 8 ) & 0x000000ff ) ) ) / 255 ) ; 
    unpackedOutput . x = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( ( ( packedInput >> 16 ) & 0x000000ff ) ) ) / 255 ) ; 
    unpackedOutput . w = ( FLOAT ) ( packedInput >> 24 ) / 255 ; 
    return unpackedOutput ; 
} 

XMFLOAT4 D3DX_B8G8R8A8_UNORM_SRGB_to_FLOAT4 ( UINT packedInput ) 
{ 
    precise XMFLOAT4 unpackedOutput ; 
    unpackedOutput . z = D3DX_SRGB_to_FLOAT ( ( packedInput & 0x000000ff ) ) ; 
    unpackedOutput . y = D3DX_SRGB_to_FLOAT ( ( ( ( packedInput >> 8 ) & 0x000000ff ) ) ) ; 
    unpackedOutput . x = D3DX_SRGB_to_FLOAT ( ( ( ( packedInput >> 16 ) & 0x000000ff ) ) ) ; 
    unpackedOutput . w = ( FLOAT ) ( packedInput >> 24 ) / 255 ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT4_to_B8G8R8A8_UNORM_SRGB ( precise XMFLOAT4 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . z = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . z ) ) ; 
    unpackedInput . y = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . y ) ) ; 
    unpackedInput . x = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . x ) ) ; 
    unpackedInput . w = saturate ( unpackedInput . w ) ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( unpackedInput . z , 255 ) ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . y , 255 ) << 8 ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . x , 255 ) << 16 ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . w , 255 ) << 24 ) ) ; 
    return packedOutput ; 
} 

#line 642
XMFLOAT3 D3DX_B8G8R8X8_UNORM_to_FLOAT3 ( UINT packedInput ) 
{ 
    precise XMFLOAT3 unpackedOutput ; 
    unpackedOutput . z = ( FLOAT ) ( packedInput & 0x000000ff ) / 255 ; 
    unpackedOutput . y = ( FLOAT ) ( ( ( packedInput >> 8 ) & 0x000000ff ) ) / 255 ; 
    unpackedOutput . x = ( FLOAT ) ( ( ( packedInput >> 16 ) & 0x000000ff ) ) / 255 ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT3_to_B8G8R8X8_UNORM ( precise XMFLOAT3 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . z ) , 255 ) ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . y ) , 255 ) << 8 ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . x ) , 255 ) << 16 ) ) ; 
    return packedOutput ; 
} 

#line 663
XMFLOAT3 D3DX_B8G8R8X8_UNORM_SRGB_to_FLOAT3_inexact ( UINT packedInput ) 
{ 
    precise XMFLOAT3 unpackedOutput ; 
    unpackedOutput . z = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( packedInput & 0x000000ff ) ) / 255 ) ; 
    unpackedOutput . y = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( ( ( packedInput >> 8 ) & 0x000000ff ) ) ) / 255 ) ; 
    unpackedOutput . x = D3DX_SRGB_to_FLOAT_inexact ( ( ( FLOAT ) ( ( ( packedInput >> 16 ) & 0x000000ff ) ) ) / 255 ) ; 
    return unpackedOutput ; 
} 

XMFLOAT3 D3DX_B8G8R8X8_UNORM_SRGB_to_FLOAT3 ( UINT packedInput ) 
{ 
    precise XMFLOAT3 unpackedOutput ; 
    unpackedOutput . z = D3DX_SRGB_to_FLOAT ( ( packedInput & 0x000000ff ) ) ; 
    unpackedOutput . y = D3DX_SRGB_to_FLOAT ( ( ( ( packedInput >> 8 ) & 0x000000ff ) ) ) ; 
    unpackedOutput . x = D3DX_SRGB_to_FLOAT ( ( ( ( packedInput >> 16 ) & 0x000000ff ) ) ) ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT3_to_B8G8R8X8_UNORM_SRGB ( precise XMFLOAT3 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . z = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . z ) ) ; 
    unpackedInput . y = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . y ) ) ; 
    unpackedInput . x = D3DX_FLOAT_to_SRGB ( saturate ( unpackedInput . x ) ) ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( unpackedInput . z , 255 ) ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . y , 255 ) << 8 ) | 
    ( D3DX_FLOAT_to_UINT ( unpackedInput . x , 255 ) << 16 ) ) ; 
    return packedOutput ; 
} 

#line 697


XMFLOAT2 D3DX_R16G16_FLOAT_to_FLOAT2 ( UINT packedInput ) 
{ 
    precise XMFLOAT2 unpackedOutput ; 
    unpackedOutput . x = f16tof32 ( packedInput & 0x0000ffff ) ; 
    unpackedOutput . y = f16tof32 ( packedInput >> 16 ) ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT2_to_R16G16_FLOAT ( precise XMFLOAT2 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = asuint ( f32tof16 ( unpackedInput . x ) ) | 
    ( asuint ( f32tof16 ( unpackedInput . y ) ) << 16 ) ; 
    return packedOutput ; 
} 



#line 720
XMFLOAT2 D3DX_R16G16_UNORM_to_FLOAT2 ( UINT packedInput ) 
{ 
    precise XMFLOAT2 unpackedOutput ; 
    unpackedOutput . x = ( FLOAT ) ( packedInput & 0x0000ffff ) / 65535 ; 
    unpackedOutput . y = ( FLOAT ) ( packedInput >> 16 ) / 65535 ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT2_to_R16G16_UNORM ( precise XMFLOAT2 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = ( ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . x ) , 65535 ) ) | 
    ( D3DX_FLOAT_to_UINT ( saturate ( unpackedInput . y ) , 65535 ) << 16 ) ) ; 
    return packedOutput ; 
} 

#line 739
XMUINT2 D3DX_R16G16_UINT_to_UINT2 ( UINT packedInput ) 
{ 
    XMUINT2 unpackedOutput ; 
    unpackedOutput . x = packedInput & 0x0000ffff ; 
    unpackedOutput . y = packedInput >> 16 ; 
    return unpackedOutput ; 
} 

UINT D3DX_UINT2_to_R16G16_UINT ( XMUINT2 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . x = min ( unpackedInput . x , 0x0000ffff ) ; 
    unpackedInput . y = min ( unpackedInput . y , 0x0000ffff ) ; 
    packedOutput = ( unpackedInput . x | 
    ( unpackedInput . y << 16 ) ) ; 
    return packedOutput ; 
} 

#line 760
XMFLOAT2 D3DX_R16G16_SNORM_to_FLOAT2 ( UINT packedInput ) 
{ 
    precise XMFLOAT2 unpackedOutput ; 
    XMINT2 signExtendedBits ; 
    signExtendedBits . x = ( INT ) ( packedInput << 16 ) >> 16 ; 
    signExtendedBits . y = ( INT ) ( packedInput & 0xffff0000 ) >> 16 ; 
    unpackedOutput . x = D3DX_INT_to_FLOAT ( signExtendedBits . x , 32767 ) ; 
    unpackedOutput . y = D3DX_INT_to_FLOAT ( signExtendedBits . y , 32767 ) ; 
    return unpackedOutput ; 
} 

UINT D3DX_FLOAT2_to_R16G16_SNORM ( precise XMFLOAT2 unpackedInput ) 
{ 
    UINT packedOutput ; 
    packedOutput = ( ( D3DX_FLOAT_to_INT ( D3DX_SaturateSigned_FLOAT ( unpackedInput . x ) , 32767 ) & 0x0000ffff ) | 
    ( D3DX_FLOAT_to_INT ( D3DX_SaturateSigned_FLOAT ( unpackedInput . y ) , 32767 ) << 16 ) ) ; 
    return packedOutput ; 
} 

#line 782
XMINT2 D3DX_R16G16_SINT_to_INT2 ( UINT packedInput ) 
{ 
    XMINT2 unpackedOutput ; 
    unpackedOutput . x = ( INT ) ( packedInput << 16 ) >> 16 ; 
    unpackedOutput . y = ( INT ) ( packedInput & 0xffff0000 ) >> 16 ; 
    return unpackedOutput ; 
} 

UINT D3DX_INT2_to_R16G16_SINT ( XMINT2 unpackedInput ) 
{ 
    UINT packedOutput ; 
    unpackedInput . x = max ( min ( unpackedInput . x , 32767 ) , - 32768 ) ; 
    unpackedInput . y = max ( min ( unpackedInput . y , 32767 ) , - 32768 ) ; 
    packedOutput = ( ( unpackedInput . x & 0x0000ffff ) | 
    ( unpackedInput . y << 16 ) ) ; 
    return packedOutput ; 
} 




#line 6 "Common.hlsli"
SamplerState DefaultSampler : register ( s0 ) ; 
SamplerState PointSampler : register ( s1 ) ; 
SamplerState LinearSampler : register ( s2 ) ; 
SamplerState TextureSampler : register ( s3 ) ; 
SamplerState AlphamaskSampler : register ( s4 ) ; 
SamplerState AlphamaskArraySampler : register ( s5 ) ; 





#line 18








#line 30








#line 39













#line 53





#line 63




#line 70

bool IsDepthForeground ( float x ) { return x > 0 ; } 
static const bool DEPTH_CLEAR = 0 ; 





#line 80
static const float3 DEBUG_COLORS [ ] = { 
    { 1 , 0 , 0 } , 
    { 0 , 1 , 0 } , 
    { 0 , 0 , 1 } , 
    
    { 1 , 1 , 0 } , 
    { 0 , 1 , 1 } , 
    { 1 , 0 , 1 } , 
    
    { 0.5 , 0 , 1 } , 
    { 0.5 , 1 , 0 } , 
    
    { 1 , 0 , 0.5 } , 
    { 0 , 1 , 0.5 } , 
    
    { 1 , 0.5 , 0 } , 
    { 0 , 0.5 , 1 } , 
    
    { 0.5 , 1 , 1 } , 
    { 1 , 0.5 , 1 } , 
    { 1 , 1 , 0.5 } , 
    { 0.5 , 0.5 , 1 } , 
} ; 

static const uint DEBUG_COLORS_LEN = 16 ; 

static const float3 CASCADE_DEBUG_COLORS [ 8 ] = 
{ 
    float3 ( 1 , 0 , 0 ) , 
    float3 ( 0 , 1 , 0 ) , 
    float3 ( 0 , 0 , 1 ) , 
    float3 ( 1 , 1 , 0 ) , 
    
    float3 ( 0 , 1 , 1 ) , 
    float3 ( 1 , 0 , 1 ) , 
    float3 ( 1 , 1 , 1 ) , 
    float3 ( 0.5 , 0.5 , 0.5 ) , 
} ; 

struct TextureDebugMultipliersType 
{ 
    float AlbedoMultiplier ; 
    float MetalnessMultiplier ; 
    float GlossMultiplier ; 
    float AoMultiplier ; 
    
    float EmissiveMultiplier ; 
    float ColorMaskMultiplier ; 
    float AlbedoShift ; 
    float MetalnessShift ; 
    
    float GlossShift ; 
    float AoShift ; 
    float EmissiveShift ; 
    float ColorMaskShift ; 
    
    float4 ColorizeHSV ; 
} ; 

#line 140



#line 5 "PixelUtils.hlsli"


#line 1 "Math/Math.hlsli"



#line 5







#line 14
float linearize_depth ( float depth , float proj33 , float proj43 ) 
{ 
    return - proj43 / ( depth + proj33 ) ; 
} 

float linearize_depth ( float depth , matrix projmatrix ) 
{ 
    return linearize_depth ( depth , projmatrix . _33 , projmatrix . _43 ) ; 
} 

float OffsetDepth ( float depth , matrix projmatrix , float offset ) 
{ 
    float proj43 = projmatrix . _43 ; 
    float proj33 = projmatrix . _33 ; 
    float linearDepth = linearize_depth ( depth , proj33 , proj43 ) ; 
    float newDepth = linearDepth + offset ; 
    
    return - proj43 / newDepth - proj33 ; 
} 

#line 36
float3 cubic_hermit ( float3 p0 , float3 p1 , float3 m0 , float3 m1 , float t ) 
{ 
    float t3 = pow ( t , 3 ) ; 
    float t2 = t * t ; 
    return ( 2 * t3 - 3 * t2 + 1 ) * p0 + ( t3 - 2 * t2 + t ) * m0 + ( t3 - t2 ) * m1 + ( - 2 * t3 + 3 * t2 ) * p1 ; 
} 

float3 cubic_hermit_tan ( float3 p0 , float3 p1 , float3 m0 , float3 m1 , float t ) 
{ 
    float t2 = t * t ; 
    return 6 * t * ( t + 1 ) * p0 + ( 3 * t2 + 4 * t + 1 ) * m0 + t * ( 3 * t - 2 ) * m1 - 6 * ( t - 1 ) * t * p1 ; 
} 

float smootherstep ( float edge0 , float edge1 , float x ) 
{ 
    
    x = clamp ( ( x - edge0 ) / ( edge1 - edge0 ) , 0.0 , 1.0 ) ; 
    
    return x * x * x * ( x * ( x * 6 - 15 ) + 10 ) ; 
} 

#line 59
float4 smooth_curve ( float4 x ) 
{ 
    return x * x * ( 3.0 - 2.0 * x ) ; 
} 

float4 triangle_wave ( float4 x ) 
{ 
    return abs ( frac ( x + 0.5 ) * 2.0 - 1.0 ) ; 
} 

float4 smooth_triangle_wave ( float4 x ) 
{ 
    return smooth_curve ( triangle_wave ( x ) ) ; 
} 

#line 76
float ExponentialDensity ( float x , float rateParameter ) 
{ 
    return x > 0 ? rateParameter * exp ( - rateParameter * x ) : 0 ; 
} 

float CalcGaussianWeight ( float x , float sigma ) 
{ 
    const float sigmaSq = sigma * sigma ; 
    const float normalizationFactor = 1.0f / sqrt ( 2.0f * 3.14159265358979323846 * sigmaSq ) ; 
    return normalizationFactor * exp ( - ( x * x ) / ( 2 * sigmaSq ) ) ; 
} 

#line 91
float3x3 create_onb ( float3 N ) 
{ 
    float3 up = abs ( N . y < 0.999 ) ? float3 ( 0 , 1 , 0 ) : float3 ( 1 , 0 , 0 ) ; 
    float3 tanx = normalize ( cross ( up , N ) ) ; 
    float3 tany = cross ( N , tanx ) ; 
    return float3x3 ( tanx , tany , N ) ; 
} 

float3x3 rotate_x ( float s , float c ) 
{ 
    return float3x3 ( 
    1 , 0 , 0 , 
    0 , c , s , 
    0 , - s , c ) ; 
} 

float3x3 rotate_x ( float angle ) 
{ 
    float s , c ; 
    sincos ( angle , s , c ) ; 
    return rotate_x ( s , c ) ; 
} 

float3x3 rotate_y ( float s , float c ) 
{ 
    return float3x3 ( 
    c , 0 , - s , 
    0 , 1 , 0 , 
    s , 0 , c ) ; 
} 

float3x3 rotate_y ( float angle ) 
{ 
    float s , c ; 
    sincos ( angle , s , c ) ; 
    return rotate_y ( s , c ) ; 
} 

float3x3 rotate_z ( float s , float c ) 
{ 
    return float3x3 ( 
    c , s , 0 , 
    - s , c , 0 , 
    0 , 0 , 1 ) ; 
} 

float3x3 rotate_z ( float angle ) 
{ 
    float s , c ; 
    sincos ( angle , s , c ) ; 
    return rotate_z ( s , c ) ; 
} 

float3x3 rotationMatrix ( float3 axis , float angle ) 
{ 
    float s = sin ( angle ) ; 
    float c = cos ( angle ) ; 
    float oc = 1.0 - c ; 
    
    return float3x3 ( oc * axis . x * axis . x + c , oc * axis . x * axis . y - axis . z * s , oc * axis . x * axis . z + axis . y * s , 
    oc * axis . x * axis . y + axis . z * s , oc * axis . y * axis . y + c , oc * axis . y * axis . z - axis . x * s , 
    oc * axis . z * axis . x - axis . y * s , oc * axis . y * axis . z + axis . x * s , oc * axis . z * axis . z + c ) ; 
} 

#line 157
float __solid_angle ( float x , float y ) 
{ 
    return atan2 ( x * y , sqrt ( x * x + y * y + 1 ) ) ; 
} 

float texel_coord_solid_angle ( float u , float v , int size ) 
{ 
    
    float U = ( 2.0f * ( ( float ) u + 0.5f ) / ( float ) size ) - 1.0f ; 
    float V = ( 2.0f * ( ( float ) v + 0.5f ) / ( float ) size ) - 1.0f ; 
    
    float invsize = 1.0f / size ; 
    
#line 172
    float x0 = U - invsize ; 
    float y0 = V - invsize ; 
    float x1 = U + invsize ; 
    float y1 = V + invsize ; 
    return __solid_angle ( x0 , y0 ) - __solid_angle ( x0 , y1 ) - __solid_angle ( x1 , y0 ) + __solid_angle ( x1 , y1 ) ; 
} 

#line 181
static const float3 __cube_axis [ ] = 
{ 
    float3 ( 1 , 0 , 0 ) , 
    float3 ( - 1 , 0 , 0 ) , 
    float3 ( 0 , 1 , 0 ) , 
    float3 ( 0 , - 1 , 0 ) , 
    float3 ( 0 , 0 , 1 ) , 
    float3 ( 0 , 0 , - 1 ) 
} ; 

float3x3 cubemap_face_onb ( float faceID ) 
{ 
    float3 up = float3 ( 0 , 1 , 0 ) ; 
    if ( faceID == 2 ) 
    { 
        up = float3 ( 0 , 0 , - 1 ) ; 
    } 
    if ( faceID == 3 ) 
    { 
        up = float3 ( 0 , 0 , 1 ) ; 
    } 
    float3 right = cross ( up , __cube_axis [ faceID ] ) ; 
    
    return float3x3 ( right , up , __cube_axis [ faceID ] ) ; 
} 

float cubemap_face_id ( float3 v ) 
{ 
    float face_id = 0 ; 
    
    if ( abs ( v . z ) >= abs ( v . x ) && abs ( v . z ) >= abs ( v . y ) ) 
    face_id = v . z < 0 ? 5 : 4 ; 
    else if ( abs ( v . y ) >= abs ( v . x ) ) 
    face_id = v . y < 0 ? 3 : 2 ; 
    else 
    face_id = v . x < 0 ? 1 : 0 ; 
    return face_id ; 
} 

#line 222
float radicalInverse ( uint bits ) 
{ 
    bits = ( bits << 16u ) | ( bits >> 16u ) ; 
    bits = ( ( bits & 0x55555555u ) << 1u ) | ( ( bits & 0xAAAAAAAAu ) >> 1u ) ; 
    bits = ( ( bits & 0x33333333u ) << 2u ) | ( ( bits & 0xCCCCCCCCu ) >> 2u ) ; 
    bits = ( ( bits & 0x0F0F0F0Fu ) << 4u ) | ( ( bits & 0xF0F0F0F0u ) >> 4u ) ; 
    bits = ( ( bits & 0x00FF00FFu ) << 8u ) | ( ( bits & 0xFF00FF00u ) >> 8u ) ; 
    return float ( bits ) * 2.3283064365386963e-10f ; 
} 

float2 hammersley2d ( uint i , uint N ) 
{ 
    return float2 ( float ( i ) / float ( N ) , radicalInverse ( i ) ) ; 
} 

#line 238
float3 project ( float3 projectedOntoVector , float3 projectedVector ) 
{ 
    float dotProduct = dot ( projectedVector , projectedOntoVector ) ; 
    return ( dotProduct / length ( projectedOntoVector ) ) * projectedOntoVector ; 
} 

float rand ( float2 co ) 
{ 
    return frac ( sin ( dot ( co . xy , float2 ( 12.9898 , 78.233 ) ) ) * 43758.5453 ) ; 
} 

float CalcSoftParticle ( float softFactor , float targetDepth , float particleDepth ) 
{ 
    float depthFade = 1 ; 
    depthFade = particleDepth - targetDepth ; 
    clip ( depthFade ) ; 
    depthFade = saturate ( depthFade / ( softFactor * 0.3f ) ) ; 
    return depthFade ; 
} 

float4x4 CreateScaleMatrix ( float s1 , float s2 , float s3 ) 
{ 
    return float4x4 ( 
    s1 , 0 , 0 , 0 , 
    0 , s2 , 0 , 0 , 
    0 , 0 , s3 , 0 , 
    0 , 0 , 0 , 1 ) ; 
} 

float4x4 CreateScaleMatrix ( float s ) 
{ 
    return float4x4 ( 
    s , 0 , 0 , 0 , 
    0 , s , 0 , 0 , 
    0 , 0 , s , 0 , 
    0 , 0 , 0 , 1 ) ; 
} 

float4x4 CreateTranslationMatrix ( float3 t ) 
{ 
    return float4x4 ( 
    1 , 0 , 0 , 0 , 
    0 , 1 , 0 , 0 , 
    0 , 0 , 1 , 0 , 
    t , 1 ) ; 
} 


static const float GaussianWeight [ ] = { 1 } ; 

#line 307





#line 7 "PixelUtils.hlsli"
Texture2D < float > Dither8x8 : register ( t28 ) ; 
Texture2D < float > RandomTexture : register ( t29 ) ; 




float3x3 PixelTangentSpace ( float3 N , float3 pos_ddx , float3 pos_ddy , float2 uv_ddx , float2 uv_ddy ) 
{ 
    float3 dpxperp = cross ( N , pos_ddx ) ; 
    float3 dpyperp = cross ( pos_ddy , N ) ; 
    
    float3 T = dpyperp * uv_ddx . x + dpxperp * uv_ddy . x ; 
    float3 B = dpyperp * uv_ddx . y + dpxperp * uv_ddy . y ; 
    
    float invmax = rsqrt ( max ( dot ( T , T ) , dot ( B , B ) ) ) ; 
    return float3x3 ( T * invmax , B * invmax , N ) ; 
} 

#line 26
float3x3 PixelTangentSpace ( float3 N , float3 pos_ddx , float3 pos_ddy , float2 uv ) 
{ 
    float2 uv_ddx = ddx ( uv ) ; 
    float2 uv_ddy = ddy ( uv ) ; 
    return PixelTangentSpace ( N , pos_ddx , pos_ddy , uv_ddx , uv_ddy ) ; 
} 

float3x3 PixelTangentSpace ( float3 N , float3 pos , float2 uv ) 
{ 
    return PixelTangentSpace ( N , ddx ( pos ) , ddy ( pos ) , uv ) ; 
} 

#line 42
void adjust_normalmap_precomputed_tangents ( inout float3 normalmap ) 
{ 
    normalmap . y *= - 1 ; 
} 

void adjust_normalmap_no_precomputed_tangents ( inout float3 normalmap ) 
{ 
    
#line 51
    normalmap . x *= - 1 ; 
} 

float3 NormalBuildTangent ( float3 normalmap , float3 normal , float2 texcoord0 , float3 pos_ws , out float normalLength ) 
{ 
    normalmap = normalmap * 2 - 1 ; 
    adjust_normalmap_no_precomputed_tangents ( normalmap ) ; 
    normalLength = length ( normalmap ) ; 
    
    float3 dPosX = ddx ( pos_ws ) ; 
    float3 dPosY = ddy ( pos_ws ) ; 
    
    float3x3 tangent_to_world = PixelTangentSpace ( normal , dPosX , dPosY , texcoord0 ) ; 
    
    return normalize ( mul ( normalmap , tangent_to_world ) ) ; 
} 

float3 Normal ( float3 normalmap , float4 tangent , float3 normal , out float normalLength ) 
{ 
    normalmap = normalmap * 2 - 1 ; 
    adjust_normalmap_precomputed_tangents ( normalmap ) ; 
    normalLength = length ( normalmap ) ; 
    
    float3 T = tangent . xyz ; 
    float3 B = cross ( T , normal ) * tangent . w ; 
    float3x3 tangent_to_world = float3x3 ( T , B , normal ) ; 
    
    return normalize ( mul ( normalmap , tangent_to_world ) ) ; 
} 

float ComputeNormalMapAlphaBestEffort ( float3 normal , float3 surfaceNormal , float alpha ) 
{ 
    
    float alphaN = saturate ( ( 1 - dot ( normal , surfaceNormal ) ) * 4 ) ; 
    return max ( alpha , alphaN ) ; 
} 

#line 89
float ComputeNormalMapAlphaBestEffort ( float3 normal , float alpha ) 
{ 
    return ComputeNormalMapAlphaBestEffort ( normal , float3 ( 0 , 0 , 1 ) , alpha ) ; 
} 

#line 95
float ComputeAmbientOcclusionBestEffort ( float3 currentNormal , float3 perturbedNormal ) 
{ 
    return pow ( dot ( currentNormal , perturbedNormal ) , 4 ) ; 
} 

float CustomAlphaToOpacityInternal ( float value ) 
{ 
    if ( value > 0 ) 
    { 
        if ( value < 1 ) 
        return 1 - value ; 
        else 
        return 3 - value ; 
    } 
    else return 1 ; 
} 

float CustomAlphaToOpacity ( float2 custom_alpha ) 
{ 
    return CustomAlphaToOpacityInternal ( custom_alpha . x ) * CustomAlphaToOpacityInternal ( custom_alpha . y ) ; 
} 

float DitherInternal ( float tex_dither , float object_dither ) 
{ 
    if ( object_dither > 1 ) 
    { 
        
        object_dither -= 2.0f ; 
        object_dither = 1.0f - object_dither ; 
        return object_dither - tex_dither ; 
    } 
    else return tex_dither - object_dither ; 
} 

void Dither ( float3 screen_position , float2 custom_alpha ) 
{ 
    if ( custom_alpha . x > 0 || custom_alpha . y > 0 ) 
    { 
        float tex_dither = Dither8x8 [ ( uint2 ) screen_position . xy % 8 ] ; 
        
        float a = DitherInternal ( tex_dither , custom_alpha . x ) ; 
        float tex_shifted = tex_dither + 0.5f ; 
        tex_shifted -= ( uint ) tex_shifted ; 
        a = min ( a , DitherInternal ( tex_shifted , custom_alpha . y ) ) ; 
        clip ( a ) ; 
    } 
} 

void DitherVoxel ( float3 screen_position , float3 normal , float3 lightVec , float custom_alpha ) 
{ 
    float3 lightDir = normalize ( lightVec ) ; 
    float3 nrm = normalize ( normal . xyz ) ; 
    float shadowTreshold = - 0.2f ; 
    
#line 150
    float voxelSide = shadowTreshold - dot ( lightDir , nrm ) ; 
    
    float tex_dither = Dither8x8 [ ( uint2 ) screen_position . xy % 8 ] ; 
    float object_dither = abs ( custom_alpha ) * 2 ; 
    if ( object_dither >= 4 ) 
    { 
        object_dither -= 4.0f ; 
        object_dither = 2.0f - object_dither ; 
        
        if ( object_dither > 1 ) 
        { 
            
#line 166
            
        } 
        else 
        { 
            
#line 172
            
            clip ( object_dither - tex_dither ) ; 
            
        } 
    } 
    else 
    { 
        if ( object_dither > 1 ) 
        { 
            
#line 183
            
            object_dither -= 1 ; 
            clip ( tex_dither - object_dither ) ; 
            
        } 
        else 
        { 
            
#line 195
            
        } 
    } 
} 



#line 5 "GBuffer/GBuffer.hlsli"

Texture2D < float > DepthBuffer : register ( t0 ) ; 
Texture2D < float4 > Gbuffer0 : register ( t1 ) ; 
Texture2D < float4 > Gbuffer1 : register ( t2 ) ; 
Texture2D < float4 > Gbuffer2 : register ( t3 ) ; 
Texture2D < uint2 > Stencil : register ( t4 ) ; 

#line 17


Texture2D < float > AOTexture : register ( t12 ) ; 

#line 22
struct PerMaterialPayload { 
    uint type ; 
} ; 



#line 1 "Frame.hlsli"




#line 140 "Common.hlsli"



#line 4 "Frame.hlsli"


#line 309 "Math/Math.hlsli"



#line 6 "Frame.hlsli"
struct EnvironmentSettings 
{ 
    matrix view_matrix ; 
    matrix projection_matrix ; 
    matrix projection_matrix_for_skybox ; 
    matrix view_projection_matrix ; 
    matrix inv_view_matrix ; 
    matrix inv_proj_matrix ; 
    matrix inv_view_proj_matrix ; 
    
    matrix background_orientation ; 
    
    float4 world_offset ; 
    
    float3 eye_offset_in_world ; 
    float __pad0 ; 
    
    float3 cameraPositionDelta ; 
    float __pad1 ; 
} ; 

struct ScreenSettings 
{ 
    uint2 offset ; 
    float2 resolution ; 
} ; 

struct FoliageSettings 
{ 
    float4 clipping_scaling ; 
    float3 wind_vec ; 
    float __pad ; 
} ; 

struct LightSettings 
{ 
    float3 directionalLightColor ; 
    float directionalLightDiffuseFactor ; 
    
    float3 directionalLightVec ; 
    float aoDirLight ; 
    
    float directionalLightGlossFactor ; 
    float ambientDiffuseFactor ; 
    float ambientSpecularFactor ; 
    float forwardPassAmbient ; 
    
    float3 SunDiscColor ; 
    float SunDiscInnerDot ; 
    
    float3 SunDiscColor2 ; 
    float _pad1 ; 
    
    float SunDiscOuterDot ; 
    float aoIndirectLight , aoPointLight , aoSpotLight ; 
    
    float skyboxBrightness ; 
    float envSkyboxBrightness ; 
    float shadowFadeout ; 
    float envShadowFadeout ; 
    
    float envAtmosphereBrightness ; 
    float AmbientFarDistance ; 
    float TransparentAmbient ; 
    float ForwardDimDistance ; 
    
    float SunDiscIntensity ; 
    float SkipIBLevels ; 
    float directionalLightSpecularFactor ; 
    uint tiles_num ; 
    
    float3 directionalLightSpecularColor ; 
    uint tiles_x ; 
} ; 

struct PostProcessSettings 
{ 
    float Contrast ; 
    float Brightness ; 
    float ConstantLuminance ; 
    float LuminanceExposure ; 
    
    float Saturation ; 
    float BrightnessFactorR ; 
    float BrightnessFactorG ; 
    float BrightnessFactorB ; 
    
    float3 TemperatureColor ; 
    float TemperatureStrength ; 
    
    float Vibrance ; 
    float EyeAdaptationTau ; 
    float BloomExposure ; 
    float BloomLumaThreshold ; 
    
    float BloomMult ; 
    float BloomEmissiveness ; 
    float BloomDepthStrength ; 
    float BloomDepthSlope ; 
    
    float3 LightColor ; 
    float LogLumThreshold ; 
    
    float3 DarkColor ; 
    float SepiaStrength ; 
    
    float EyeAdaptationSpeedUp ; 
    float EyeAdaptationSpeedDown ; 
    float WhitePoint ; 
    float BloomDirtRatio ; 
    
    int GrainSize ; 
    float GrainAmount ; 
    float GrainStrength ; 
    float ChromaticFactor ; 
    
    float VignetteStart ; 
    float VignetteLength ; 
    float Res0 , Res1 ; 
} ; 

struct FogSettings 
{ 
    float3 color ; 
    float density ; 
    float mult ; 
    float __pad1 , __pad2 , __pad3 ; 
} ; 

struct VoxelSettings 
{ 
    
    float4 LodRanges [ 12 ] ; 
    
    float DebugVoxelLod ; 
    float __pad1 , __pad2 , __pad3 ; 
} ; 

struct FrameConstants 
{ 
    EnvironmentSettings Environment ; 
    
    ScreenSettings Screen ; 
    
    FoliageSettings Foliage ; 
    
    LightSettings Light ; 
    
    PostProcessSettings Post ; 
    
    FogSettings Fog ; 
    
    VoxelSettings Voxels ; 
    
    TextureDebugMultipliersType TextureDebugMultipliers ; 
    
    float frameTime ; 
    float frameTimeDelta ; 
    float randomSeed ; 
    float DistanceFade ; 
} ; 

cbuffer Frame : register ( b0 ) 
{ 
    FrameConstants frame_ ; 
} ; 

float3 view_to_world ( float3 view ) 
{ 
    return mul ( view , ( float3x3 ) frame_ . Environment . inv_view_matrix ) ; 
} 

float3 world_to_view ( float3 world ) 
{ 
    return mul ( world , ( float3x3 ) frame_ . Environment . view_matrix ) ; 
} 

float2 screen_to_uv ( float2 screencoord ) 
{ 
    const float2 invres = 1 / frame_ . Screen . resolution ; 
    return ( screencoord - frame_ . Screen . offset ) * invres + invres / 2 ; 
} 

float3 get_camera_position ( ) 
{ 
    return 0 ; 
} 

float3 GetEyeCenterPosition ( ) 
{ 
    return 0 ; 
} 

float3 compute_screen_ray ( float2 uv ) 
{ 
    const float ray_x = 1. / frame_ . Environment . projection_matrix . _11 ; 
    const float ray_y = 1. / frame_ . Environment . projection_matrix . _22 ; 
    float3 projOffset = float3 ( frame_ . Environment . projection_matrix . _31 / frame_ . Environment . projection_matrix . _11 , 
    frame_ . Environment . projection_matrix . _32 / frame_ . Environment . projection_matrix . _22 , 0 ) ; 
    return projOffset + float3 ( lerp ( - ray_x , ray_x , uv . x ) , - lerp ( - ray_y , ray_y , uv . y ) , - 1. ) ; 
} 

float3 compute_screen_ray_for_skybox ( float2 uv ) 
{ 
    const float ray_x = 1. / frame_ . Environment . projection_matrix_for_skybox . _11 ; 
    const float ray_y = 1. / frame_ . Environment . projection_matrix_for_skybox . _22 ; 
    float3 projOffset = float3 ( frame_ . Environment . projection_matrix_for_skybox . _31 / frame_ . Environment . projection_matrix_for_skybox . _11 , 
    frame_ . Environment . projection_matrix_for_skybox . _32 / frame_ . Environment . projection_matrix_for_skybox . _22 , 0 ) ; 
    return projOffset + float3 ( lerp ( - ray_x , ray_x , uv . x ) , - lerp ( - ray_y , ray_y , uv . y ) , - 1. ) ; 
} 

float compute_depth ( float hw_depth ) 
{ 
    return - linearize_depth ( hw_depth , frame_ . Environment . projection_matrix ) ; 
} 

float3 ReconstructWorldPosition ( float hwDepth , float2 uv ) 
{ 
    float3 screen_ray = compute_screen_ray ( uv ) ; 
    float depth = compute_depth ( hwDepth ) ; 
    float3 viewDirection = mul ( screen_ray , transpose ( ( float3x3 ) frame_ . Environment . view_matrix ) ) ; 
    
    return depth * viewDirection - frame_ . Environment . eye_offset_in_world ; 
} 

float2 get_voxel_lod_range ( uint lod , int isMassive ) 
{ 
    lod = min ( lod + 8 * isMassive , 8 + 16 - 1 ) ; 
    return ( lod % 2 ) ? frame_ . Voxels . LodRanges [ lod / 2 ] . zw : frame_ . Voxels . LodRanges [ lod / 2 ] . xy ; 
} 




#line 28 "GBuffer/GBuffer.hlsli"
bool coverage_all ( uint coverage ) 
{ 
    
    return 1 ; 
    
#line 38
    
} 



#line 1 "Surface.hlsli"



struct SurfaceInterface 
{ 
    float3 base_color ; 
    uint LOD ; 
    float metalness ; 
    float3 albedo ; 
    float3 f0 ; 
    float gloss ; 
    float ao ; 
    float emissive ; 
    
    float3 position ; 
    float3 positionView ; 
    float3 N ; 
    float3 NView ; 
    float3 V ; 
    float3 VSkybox ; 
    float3 VView ; 
    
    float native_depth ; 
    float depth ; 
    uint coverage ; 
    uint stencil ; 
} ; 



#line 29


#line 43 "GBuffer/GBuffer.hlsli"


#line 309 "Math/Math.hlsli"



#line 45 "GBuffer/GBuffer.hlsli"
SurfaceInterface read_gbuffer ( uint2 screencoord , uint sample = 0 ) 
{ 
    SurfaceInterface gbuffer ; 
    
    float2 uv = screen_to_uv ( screencoord ) ; 
    
    float hw_depth ; 
    float4 gbuffer0 ; 
    float4 gbuffer1 ; 
    float4 gbuffer2 ; 
    uint stencil ; 
    
    hw_depth = DepthBuffer [ screencoord ] . r ; 
    gbuffer0 = Gbuffer0 [ screencoord ] ; 
    gbuffer1 = Gbuffer1 [ screencoord ] ; 
    gbuffer2 = Gbuffer2 [ screencoord ] ; 
    stencil = Stencil [ screencoord ] . g ; 
    
#line 68
    
    
    float3 screen_ray = compute_screen_ray ( uv ) ; 
    float3 Vinv = view_to_world ( screen_ray ) ; 
    gbuffer . native_depth = hw_depth ; 
    gbuffer . depth = compute_depth ( hw_depth ) ; 
    gbuffer . positionView = gbuffer . depth * screen_ray ; 
    gbuffer . position = get_camera_position ( ) + gbuffer . depth * Vinv ; 
    gbuffer . V = - normalize ( Vinv ) ; 
    gbuffer . VView = - normalize ( screen_ray ) ; 
    
    float3 screen_ray_skybox = compute_screen_ray_for_skybox ( uv ) ; 
    float3 Vinv_skybox = view_to_world ( screen_ray_skybox ) ; 
    gbuffer . VSkybox = - normalize ( Vinv_skybox ) ; 
    
    float3 nview = unpack_normals2 ( gbuffer1 . xy ) ; 
    gbuffer . NView = nview ; 
    gbuffer . N = view_to_world ( nview ) ; 
    
    gbuffer . base_color = gbuffer0 . rgb ; 
    gbuffer . LOD = gbuffer0 . a * 255 ; 
    
    gbuffer . gloss = gbuffer2 . g ; 
    
    gbuffer . metalness = gbuffer2 . r ; 
    gbuffer . ao = max ( min ( gbuffer1 . b , AOTexture . SampleLevel ( LinearSampler , ( ( float2 ) screencoord ) / frame_ . Screen . resolution , 0 ) ) , 0.01 ) ; 
    gbuffer . coverage = gbuffer2 . a * 255 ; 
    gbuffer . emissive = gbuffer2 . b ; 
    gbuffer . stencil = stencil ; 
    
    gbuffer . albedo = SurfaceAlbedo ( gbuffer . base_color , gbuffer . metalness ) ; 
    gbuffer . f0 = SurfaceF0 ( gbuffer . base_color , gbuffer . metalness ) ; 
    
    return gbuffer ; 
} 

static const float2 screen_offset_3x3 [ 8 ] = 
{ 
    { - 1 , 1 } , { 0 , 1 } , { 1 , 1 } , 
    { - 1 , 0 } , { 1 , 0 } , 
    { - 1 , - 1 } , { 0 , - 1 } , { 1 , - 1 } , 
} ; 

#line 112
bool gbuffer_edgedetect ( uint2 screencoord ) 
{ 
    uint i ; 
    float depth = read_gbuffer ( screencoord ) . native_depth ; 
    float4 depth1 ; 
    float4 depth2 ; 
    
    [ unroll ] 
    for ( i = 0 ; i < 4 ; i ++ ) 
    { 
        depth1 [ i ] = read_gbuffer ( screencoord + screen_offset_3x3 [ i ] ) . native_depth ; 
        depth2 [ i ] = read_gbuffer ( screencoord + screen_offset_3x3 [ 4 + i ] ) . native_depth ; 
    } 
    depth1 = abs ( depth - depth1 ) ; 
    depth2 = abs ( depth - depth2 ) ; 
    
    float4 maxd = max ( depth1 , depth2 ) ; 
    float4 mind = max ( min ( depth1 , depth2 ) , 0.000001f ) ; 
    
    float4 depthr = step ( mind * 100 , maxd ) ; 
    
    float3 normal = read_gbuffer ( screencoord ) . N ; 
    
    float4 normal1 ; 
    float4 normal2 ; 
    [ unroll ] 
    for ( i = 0 ; i < 4 ; i ++ ) 
    { 
        normal1 [ i ] = dot ( normal , read_gbuffer ( screencoord + screen_offset_3x3 [ i ] ) . N ) ; 
        normal2 [ i ] = dot ( normal , read_gbuffer ( screencoord + screen_offset_3x3 [ i + 4 ] ) . N ) ; 
    } 
    normal1 = abs ( normal2 - normal1 ) ; 
    float4 normalr = step ( 0.3 , normal1 ) ; 
    normalr = max ( normalr , depthr ) ; 
    
#line 149
    float depthMin = depth ; 
    float depthMax = depth ; 
    uint coverage = read_gbuffer ( screencoord ) . coverage ; 
    float3 N = read_gbuffer ( screencoord ) . N ; 
    float3 N1 = N ; 
    
#line 168
    
    bool covered = coverage_all ( coverage ) || ( depthMax == 0 ) ; 
    
    return ! covered && dot ( normalr , 0.25 ) ; 
    
#line 174
} 


#line 3 "Debug.hlsli"


#line 309 "Math/Math.hlsli"



#line 4 "Debug.hlsli"


#line 1 "Math/Color.hlsli"



#line 6
float COLOR_EPSILON = 1e-10 ; 

#line 9
float3 hsv_to_rgb ( float3 hsv ) 
{ 
    float4 K = float4 ( 1.0f , 2.0f / 3.0f , 1.0f / 3.0f , 3.0f ) ; 
    float3 p = abs ( frac ( hsv . xxx + K . xyz ) * 6.0f - K . www ) ; 
    return hsv . z * lerp ( K . xxx , saturate ( p - K . xxx ) , hsv . y ) ; 
} 

float3 rgb_to_hsv ( float3 rgb ) 
{ 
    float4 K = float4 ( 0.0f , - 1.0f / 3.0f , 2.0f / 3.0f , - 1.0f ) ; 
    float4 p = lerp ( float4 ( rgb . bg , K . wz ) , float4 ( rgb . gb , K . xy ) , step ( rgb . b , rgb . g ) ) ; 
    float4 q = lerp ( float4 ( p . xyw , rgb . r ) , float4 ( rgb . r , p . yzx ) , step ( p . x , rgb . r ) ) ; 
    
    float d = q . x - min ( q . w , q . y ) ; 
    float e = 1.0e-10 ; 
    return float3 ( abs ( q . z + ( q . w - q . y ) / ( 6.0 * d + e ) ) , d / ( q . x + e ) , q . x ) ; 
} 

float3 srgb_to_rgb ( float3 srgb ) 
{ 
    return ( srgb <= 0.04045 ) ? srgb / 12.92 : pow ( ( abs ( srgb ) + 0.055 ) / 1.055 , 2.4 ) ; 
} 

float srgb_to_rgb_fast ( float srgb ) 
{ 
    return pow ( abs ( srgb ) , 2.2f ) ; 
} 

float4 srgba_to_rgba ( float4 srgb ) 
{ 
    return float4 ( srgb_to_rgb ( srgb . rgb ) , srgb . a ) ; 
} 

float3 rgb_to_srgb ( float3 rgb ) 
{ 
    return ( rgb <= 0.0031308 ) ? rgb * 12.92 : ( pow ( abs ( rgb ) , 1 / 2.4 ) * 1.055 - 0.055 ) ; 
} 

#line 50
float GetRelativeLuminance ( float3 rgb ) 
{ 
    
#line 54
    return dot ( rgb , float3 ( 0.2126 , 0.7152 , 0.0722 ) ) ; 
} 

float3 ColorShift ( float3 rgb , float3 hsv_shift , float rate ) 
{ 
    float3 shiftedHSV = rgb_to_hsv ( rgb ) + hsv_shift ; 
    
    shiftedHSV . x = shiftedHSV . x % 1.0f ; 
    
    if ( shiftedHSV . x < 0 ) 
    shiftedHSV . x += 1.0f ; 
    
    shiftedHSV . y = clamp ( shiftedHSV . y , 0 , 1.0f ) ; 
    shiftedHSV . z = clamp ( shiftedHSV . z , 0 , 1.0f ) ; 
    
    return lerp ( rgb , hsv_to_rgb ( shiftedHSV ) , rate ) ; 
} 

float3 hsv_shift_to_hsv ( float3 hsv_shift ) { 
    return float3 ( ( hsv_shift . xyz + 1 ) / 2 ) ; 
} 

float3 hsv_to_hsv_shift ( float3 hsv ) { 
    return float3 ( hsv . xyz * 2 - 1 ) ; 
} 

float3 hsv_shift_to_rgb ( float3 hsv_shift ) { 
    return hsv_to_rgb ( hsv_shift_to_hsv ( hsv_shift ) ) ; 
} 

float3 rgb_to_hsv_shift ( float3 rgb ) { 
    return hsv_to_hsv_shift ( rgb_to_hsv ( rgb ) ) ; 
} 

float3 ToGrayScale ( float3 color ) 
{ 
    float3 grayXfer = float3 ( 0.3 , 0.59 , 0.11 ) ; 
    return dot ( grayXfer , color ) ; 
} 




#line 5 "Debug.hlsli"


#line 1 "Shadows/Csm.hlsli"





#line 140 "Common.hlsli"



#line 6 "Shadows/Csm.hlsli"
SamplerComparisonState ShadowmapSampler : register ( s15 ) ; 

struct CsmConstants 
{ 
    matrix CascadeMatrix [ 8 ] ; 
    matrix CascadeMatrixExtruded [ 8 ] ; 
    float4 SplitDist [ 8 / 4 ] ; 
    float4 CascadeScale [ 8 ] ; 
    
    float ResolutionInv ; 
    float ZBias ; 
    int CascadeCount ; 
    uint ValidCascades ; 
} ; 

cbuffer CSM : register ( b4 ) 
{ 
    CsmConstants csm_ ; 
} 

Texture2DArray < float > CSM : register ( t15 ) ; 

static const float F_INF = 1e+38 ; 


static const uint PoissonSamplesNum = 12 ; 


static const float2 PoissonSamplesArray [ ] = 
{ 
    float2 ( 0.130697 , - 0.209628 ) , 
    float2 ( - 0.112312 , 0.327448 ) , 
    float2 ( - 0.499089 , - 0.030236 ) , 
    float2 ( 0.332994 , 0.380106 ) , 
    float2 ( - 0.234209 , - 0.557516 ) , 
    float2 ( 0.695785 , 0.066096 ) , 
    float2 ( - 0.419485 , 0.632050 ) , 
    float2 ( 0.678688 , - 0.447710 ) , 
    float2 ( 0.333877 , 0.807633 ) , 
    float2 ( - 0.834613 , 0.383171 ) , 
    float2 ( - 0.682884 , - 0.637443 ) , 
    float2 ( 0.769794 , 0.568801 ) , 
    float2 ( - 0.087941 , - 0.955035 ) , 
    float2 ( - 0.947188 , - 0.166568 ) , 
    float2 ( 0.425303 , - 0.874130 ) , 
    float2 ( - 0.134360 , 0.982611 ) , 
} ; 

static const float2 RandomRotation [ ] = 
{ 
    float2 ( 0.971327 , 0.237749 ) , 
    float2 ( - 0.885968 , 0.463746 ) , 
    float2 ( - 0.913331 , 0.407218 ) , 
    float2 ( 0.159352 , 0.987222 ) , 
    float2 ( - 0.640909 , 0.767617 ) , 
    float2 ( - 0.625570 , 0.780168 ) , 
    float2 ( - 0.930406 , 0.366530 ) , 
    float2 ( - 0.940038 , 0.341070 ) , 
    float2 ( 0.964899 , 0.262621 ) , 
    float2 ( - 0.647723 , 0.761876 ) , 
    float2 ( 0.663773 , 0.747934 ) , 
    float2 ( 0.929892 , 0.367833 ) , 
    float2 ( - 0.686272 , 0.727345 ) , 
    float2 ( - 0.999057 , 0.043413 ) , 
    float2 ( - 0.710684 , 0.703511 ) , 
    float2 ( - 0.893640 , 0.448784 ) 
} ; 

float3 WorldToShadowmap ( float3 worldPosition , matrix shadowMatrix ) 
{ 
    float4 shadowmapPosition = mul ( float4 ( worldPosition , 1 ) , shadowMatrix ) ; 
    return shadowmapPosition . xyz / shadowmapPosition . w ; 
} 

bool IsValid ( int cascadeIndex ) 
{ 
    return ( csm_ . ValidCascades & ( 1 << cascadeIndex ) ) > 0 ; 
} 

int CalculateCascadeIndexFromSplitInternal ( float linear_depth , float3 world_pos ) 
{ 
    float4 near = csm_ . SplitDist [ 0 ] ; 
    float4 far = float4 ( csm_ . SplitDist [ 0 ] . yzw , csm_ . SplitDist [ 1 ] . x ) ; 
    
    int index = dot ( ( linear_depth >= near ) * ( linear_depth < far ) , float4 ( 0 , 1 , 2 , 3 ) ) ; 
    
    near = csm_ . SplitDist [ 1 ] ; 
    far = float4 ( csm_ . SplitDist [ 1 ] . yzw , F_INF ) ; 
    
    index = max ( index , dot ( ( linear_depth >= near ) * ( linear_depth < far ) , float4 ( 4 , 5 , 6 , 7 ) ) ) ; 
    
    return index ; 
} 

int CalculateCascadeIndexFromSplit ( float linear_depth , float3 world_pos , out float3 lpos ) 
{ 
    int index = CalculateCascadeIndexFromSplitInternal ( linear_depth , world_pos ) ; 
    
    index = max ( 0 , index - 1 ) ; 
    
    lpos = WorldToShadowmap ( world_pos , csm_ . CascadeMatrix [ index ] ) ; 
    if ( any ( lpos != saturate ( lpos ) ) ) 
    { 
        index ++ ; 
        lpos = WorldToShadowmap ( world_pos , csm_ . CascadeMatrix [ index ] ) ; 
    } 
    
    return index ; 
} 

int CalculateCascadeIndexFromSplitAndSkipInvalid ( float linear_depth , float3 world_pos , out float3 lpos ) 
{ 
    int index = CalculateCascadeIndexFromSplitInternal ( linear_depth , world_pos ) ; 
    
    while ( index < ( csm_ . CascadeCount - 1 ) && ! IsValid ( index ) ) 
    index ++ ; 
    
    lpos = WorldToShadowmap ( world_pos , csm_ . CascadeMatrix [ index ] ) ; 
    if ( any ( lpos != saturate ( lpos ) ) ) 
    { 
        index ++ ; 
        while ( index < ( csm_ . CascadeCount - 1 ) && ! IsValid ( index ) ) 
        index ++ ; 
        
        lpos = WorldToShadowmap ( world_pos , csm_ . CascadeMatrix [ index ] ) ; 
    } 
    
    return index ; 
} 

void GetHigherCascadeShadow ( float3 worldPosition , inout uint cascadeIndex , inout float3 shadowmapPosition ) 
{ 
    if ( cascadeIndex > 0 ) 
    { 
        uint newCascadeIndex = cascadeIndex - 1 ; 
        if ( ! IsValid ( newCascadeIndex ) ) 
        return ; 
        
        float3 shadowmapPosition2 = WorldToShadowmap ( worldPosition , csm_ . CascadeMatrixExtruded [ newCascadeIndex ] ) ; 
        if ( ! any ( shadowmapPosition2 != saturate ( shadowmapPosition2 ) ) ) 
        { 
            shadowmapPosition2 = saturate ( WorldToShadowmap ( worldPosition , csm_ . CascadeMatrix [ newCascadeIndex ] ) ) ; 
            float shadow = CSM . SampleCmpLevelZero ( ShadowmapSampler , float3 ( shadowmapPosition2 . xy , newCascadeIndex ) , shadowmapPosition2 . z ) ; 
            if ( shadow == 0 ) 
            { 
                cascadeIndex -- ; 
                shadowmapPosition = shadowmapPosition2 ; 
            } 
        } 
    } 
} 

float3 ShadowmapToWorld ( float2 shadowmapPosition , matrix inverseShadowMatrix ) 
{ 
    float4 worldPosition = mul ( float4 ( shadowmapPosition , 0 , 1 ) , inverseShadowMatrix ) ; 
    return worldPosition . xyz ; 
} 

float2 GetPoissonFilterTexelSize ( float distance , uint cascadeIndex ) 
{ 
    float texelSize = csm_ . ResolutionInv ; 
    
    float2 filterSize = csm_ . CascadeScale [ cascadeIndex ] . xy ; 
    
    float2 filterTexelSize = texelSize * filterSize ; 
    float2 clamped = max ( filterTexelSize , csm_ . ResolutionInv ) ; 
    return clamped ; 
} 

float SampleShadowCascade ( float distance , float3 shadowmapPosition , float3 worldPosition , int cascadeIndex , uint2 rotationOffset = 0 , uint samplesNum = PoissonSamplesNum ) 
{ 
    
#line 204
    
    return CSM . SampleCmpLevelZero ( ShadowmapSampler , float3 ( shadowmapPosition . xy , cascadeIndex ) , shadowmapPosition . z ) ; 
    
} 

static const float CASCADE_BLEND_THRESHOLD = 0.1f ; 

float SampleShadow ( float distance , float3 shadowmapPosition , float3 worldPosition , int cascadeIndex , uint2 rotationOffset = 0 ) 
{ 
    
#line 226
    
    return SampleShadowCascade ( distance , shadowmapPosition , worldPosition , cascadeIndex , rotationOffset ) ; 
} 

float SampleShadowFast ( float distance , float3 shadowmapPosition , int cascadeIndex ) 
{ 
    
    return CSM . SampleCmpLevelZero ( ShadowmapSampler , float3 ( shadowmapPosition . xy , cascadeIndex ) , shadowmapPosition . z ) ; 
} 

float CalculateShadow ( float3 world_pos , int filteredCascades ) 
{ 
    float3 lpos ; 
    float distance = length ( world_pos ) ; 
    int cascadeIndex = CalculateCascadeIndexFromSplitAndSkipInvalid ( distance , world_pos , lpos ) ; 
    if ( cascadeIndex <= filteredCascades ) 
    return SampleShadow ( distance , lpos , world_pos , cascadeIndex ) ; 
    else if ( cascadeIndex < csm_ . CascadeCount ) 
    return SampleShadowFast ( distance , lpos , cascadeIndex ) ; 
    else return 1 ; 
} 

float CalculateShadowFast ( float3 world_pos ) 
{ 
    float3 lpos ; 
    float distance = length ( world_pos ) ; 
    int cascadeIndex = CalculateCascadeIndexFromSplitAndSkipInvalid ( distance , world_pos , lpos ) ; 
    if ( cascadeIndex < csm_ . CascadeCount ) 
    return SampleShadowFast ( distance , lpos , cascadeIndex ) ; 
    else return 1 ; 
} 

float CalculateShadowFastFromCascade ( float3 world_pos , int cascadeIndex ) 
{ 
    if ( cascadeIndex < csm_ . CascadeCount ) 
    { 
        float distance = length ( world_pos ) ; 
        float3 lpos = WorldToShadowmap ( world_pos , csm_ . CascadeMatrix [ cascadeIndex ] ) ; 
        return SampleShadowFast ( distance , lpos , cascadeIndex ) ; 
    } 
    else return 1 ; 
} 




#line 6 "Debug.hlsli"


#line 1 "Lighting/EnvAmbient.hlsli"





#line 1 "Brdf.hlsli"





#line 1 "DiffuseOrenNayar.hlsli"





#line 309 "Math/Math.hlsli"



#line 5 "DiffuseOrenNayar.hlsli"


#line 47 "Utils.hlsli"


#line 47


#line 44 "DiffuseOrenNayar.hlsli"
float OrenNayarOriginal ( float nl , float nv , float gloss ) 
{ 
    float r2 = remap_gloss ( gloss ) ; 
    float A = mad ( - 0.5f , r2 / ( r2 + 0.33f ) , 1.0f ) ; 
    float B = 0.45f * r2 / ( r2 + 0.09f ) * max ( 0 , cos ( nv - nl ) ) ; 
    float C = sin ( max ( nv , nl ) ) * tan ( min ( nl , nv ) ) ; 
    return mad ( B , C , A ) ; 
} 

#line 54
float3 DiffuseLightOrenNayar ( float nl , float nv , float lv , float3 albedo , float gloss ) 
{ 
    float3 lambert = albedo / 3.14159265358979323846 ; 
    
    return lambert ; 
} 

float4 DiffuseLightOrenNayarT ( float nl , float nv , float lv , float4 albedo , float gloss ) 
{ 
    float4 lambert = albedo / 3.14159265358979323846 ; 
    
    return lambert ; 
} 




#line 5 "Brdf.hlsli"


#line 1 "SpecularGGX.hlsli"





#line 309 "Math/Math.hlsli"



#line 5 "SpecularGGX.hlsli"


#line 47 "Utils.hlsli"


#line 47


#line 8 "SpecularGGX.hlsli"
float DGGX ( float nh , float a ) 
{ 
    float a2 = a * a ; 
    float normalizationConstant = a2 * 0.318309886183790671538 ; 
    float nh2 = nh * nh ; 
    float b = mad ( nh2 , ( a2 - 1 ) , 1 ) ; 
    return normalizationConstant / ( b * b ) ; 
} 

float G1SmithSchlickGGX ( float nx , float k ) 
{ 
    return mad ( 1 - k , nx , k ) ; 
} 

#line 23
float GSmithSchlickGGX ( float ln , float vn , float a ) 
{ 
    float k = 0.5f * a ; 
    return 0.25f / ( G1SmithSchlickGGX ( ln , k ) * G1SmithSchlickGGX ( vn , k ) ) ; 
} 

#line 30
float3 FSchlick ( float vh , float3 f0 ) 
{ 
    float fr = exp2 ( ( - 5.55473 * vh - 6.98316 ) * vh ) ; 
    return mad ( 1 - f0 , fr , f0 ) ; 
} 

float3 SpecularGGX ( float ln , float nh , float vn , float vh , float3 f0 , float gloss ) 
{ 
    float roughness = GlossToRoughness ( gloss ) ; 
    float a = max ( roughness * roughness , 2e-3 ) ; 
    return DGGX ( nh , a ) * GSmithSchlickGGX ( ln , vn , a ) * FSchlick ( vh , f0 ) ; 
} 




#line 6 "Brdf.hlsli"


#line 1 "SpecularPhong.hlsli"





#line 309 "Math/Math.hlsli"



#line 5 "SpecularPhong.hlsli"


#line 47 "Utils.hlsli"


#line 47


#line 7 "SpecularPhong.hlsli"
float3 fresnel ( float cosTheta , 
float3 reflectivity , 
float fresnelStrength ) 
{ 
    
    float f = saturate ( 1.0 - cosTheta ) ; 
    float f2 = f * f ; f *= f2 * f2 ; 
    return lerp ( reflectivity , float3 ( 1.0 , 1.0 , 1.0 ) , f * fresnelStrength ) ; 
} 

float3 SpecularPhong ( float ln , float nh , float vn , float vh , float3 f0 , float gloss ) 
{ 
    gloss = min ( gloss , 0.995 ) ; 
    float specExp = - 10.0 / log2 ( gloss * 0.968 + 0.03 ) ; 
    specExp *= specExp ; 
    float phongNormalize = ( specExp + 4.0 ) / ( 8.0 * 3.14159265358979323846 ) ; 
    
#line 25
    float phong = phongNormalize * pow ( nh , specExp ) ; 
    
#line 28
    float horizon = 1.0 - ln ; 
    horizon *= horizon ; horizon *= horizon ; 
    phong = phong - phong * horizon ; 
    
#line 33
    float glossAdjust = gloss * gloss ; 
    float3 fres = fresnel ( vn , 
    f0 , 
    glossAdjust ) ; 
    
#line 39
    return min ( fres * phong , 100 ) ; 
} 

float4 fresnel ( float cosTheta , 
float4 reflectivity , 
float fresnelStrength ) 
{ 
    
    float f = saturate ( 1.0 - cosTheta ) ; 
    float f2 = f * f ; f *= f2 * f2 ; 
    return lerp ( reflectivity , float4 ( 1.0 , 1.0 , 1.0 , 1.0 ) , f * fresnelStrength ) ; 
} 

float4 SpecularPhongT ( float ln , float nh , float vn , float vh , float4 f0 , float gloss ) 
{ 
    gloss = min ( gloss , 0.995 ) ; 
    float specExp = - 10.0 / log2 ( gloss * 0.968 + 0.03 ) ; 
    specExp *= specExp ; 
    float phongNormalize = ( specExp + 4.0 ) / ( 8.0 * 3.14159265358979323846 ) ; 
    
#line 60
    float phong = phongNormalize * pow ( nh , specExp ) ; 
    
#line 63
    float horizon = 1.0 - ln ; 
    horizon *= horizon ; horizon *= horizon ; 
    phong = phong - phong * horizon ; 
    
#line 68
    float glossAdjust = gloss * gloss ; 
    float4 fres = fresnel ( vn , 
    f0 , 
    glossAdjust ) ; 
    
#line 74
    return min ( fres * phong , 100 ) ; 
} 

float fresnel ( float cosTheta , 
float reflectivity , 
float fresnelStrength ) 
{ 
    
    float f = saturate ( 1.0 - cosTheta ) ; 
    float f2 = f * f ; f *= f2 * f2 ; 
    return lerp ( reflectivity , 1.0 , f * fresnelStrength ) ; 
} 

float SpecularPhongS ( float ln , float nh , float vn , float vh , float f0 , float gloss ) 
{ 
    gloss = min ( gloss , 0.995 ) ; 
    float specExp = - 10.0 / log2 ( gloss * 0.968 + 0.03 ) ; 
    specExp *= specExp ; 
    float phongNormalize = ( specExp + 4.0 ) / ( 8.0 * 3.14159265358979323846 ) ; 
    
#line 95
    float phong = phongNormalize * pow ( nh , specExp ) ; 
    
#line 98
    float horizon = 1.0 - ln ; 
    horizon *= horizon ; horizon *= horizon ; 
    phong = phong - phong * horizon ; 
    
#line 103
    float glossAdjust = gloss * gloss ; 
    float fres = fresnel ( vn , 
    f0 , 
    glossAdjust ) ; 
    
#line 109
    return min ( fres * phong , 100 ) ; 
} 




#line 7 "Brdf.hlsli"


#line 47 "Utils.hlsli"


#line 47


#line 9 "Brdf.hlsli"





float ToksvigGloss ( float gloss , float normalmap_len ) 
{ 
    float specular = GlossToSpecular ( gloss ) ; 
    float ft = normalmap_len / lerp ( specular , 1.0f , normalmap_len ) ; 
    ft = max ( ft , 0.001f ) ; 
    return SpecularToGloss ( ft * specular ) ; 
} 

float3 importance_sample_ggx ( float2 xi , float a , float3 N , out float pdf ) 
{ 
    float phi = 2 * 3.14159265358979323846 * xi . x ; 
    float costheta = sqrt ( ( 1 - xi . y ) / ( mad ( xi . y , a * a - 1 , 1.0f ) ) ) ; 
    float sintheta = sqrt ( 1 - costheta * costheta ) ; 
    pdf = DGGX ( costheta , a ) ; 
    
    float3 H ; 
    H . x = sintheta * cos ( phi ) ; 
    H . y = sintheta * sin ( phi ) ; 
    H . z = costheta ; 
    float3 up = abs ( N . z ) < 0.9999f ? float3 ( 0 , 0 , 1 ) : float3 ( 1 , 0 , 0 ) ; 
    float3 tanx = normalize ( cross ( up , N ) ) ; 
    float3 tany = cross ( N , tanx ) ; 
    
    return tanx * H . x + tany * H . y + N * H . z ; 
} 

float3 MaterialRadiance ( float3 albedo , float3 sColor , float3 f0 , float gloss , float3 N , float3 L , float3 V , float3 H , float dFactor , float sFactor = 1 ) 
{ 
    float ln = saturate ( dot ( L , N ) ) ; 
    float vn = saturate ( dot ( V , N ) ) ; 
    float nh = saturate ( dot ( N , H ) ) ; 
    float vh = saturate ( dot ( V , H ) ) ; 
    float lv = saturate ( dot ( L , V ) ) ; 
    
    float3 diffuseLight = DiffuseLightOrenNayar ( ln , vn , lv , albedo , gloss ) ; 
    float3 specularLight = SpecularPhong ( ln , nh , vn , vh , f0 , gloss ) ; 
    
    float3 light = diffuseLight * dFactor ; 
    
    light += specularLight * sFactor * sColor ; 
    
    return light * ln ; 
} 

float4 MaterialRadianceT ( float4 albedo , float4 sColor , float4 f0 , float gloss , float3 N , float3 L , float3 V , float3 H , float dFactor , float sFactor = 1 ) 
{ 
    float ln = saturate ( dot ( L , N ) ) ; 
    float vn = saturate ( dot ( V , N ) ) ; 
    float nh = saturate ( dot ( N , H ) ) ; 
    float vh = saturate ( dot ( V , H ) ) ; 
    float lv = saturate ( dot ( L , V ) ) ; 
    
    float4 diffuseLight = DiffuseLightOrenNayarT ( ln , vn , lv , albedo , gloss ) ; 
    float4 specularLight = SpecularPhongT ( ln , nh , vn , vh , f0 , gloss ) ; 
    
    float4 light = diffuseLight * dFactor ; 
    
    light += specularLight * sFactor * sColor ; 
    
    return light * ln ; 
} 




#line 5 "Lighting/EnvAmbient.hlsli"


#line 237 "Frame.hlsli"



#line 7 "Lighting/EnvAmbient.hlsli"
Texture2D < float2 > AmbientBRDFTex : register ( t16 ) ; 

TextureCube < float4 > SkyboxTex : register ( t10 ) ; 
TextureCube < float4 > SkyboxIBLFarTex : register ( t17 ) ; 
TextureCube < float4 > SkyboxIBLCloseTex : register ( t11 ) ; 

static const float IBL_MAX_MIPMAP = 8 ; 

float3 GetSunColor ( float3 L , float3 V , float3 color , float innerDot , float outerDot ) 
{ 
    float lv = saturate ( dot ( L , - V ) ) ; 
    float dirFactorX = step ( innerDot , lv ) ; 
    
#line 21
    return color * dirFactorX ; 
} 

float3 ApplySkyboxOrientation ( float3 v ) 
{ 
    v = mul ( float4 ( - v , 0.0f ) , frame_ . Environment . background_orientation ) . xyz ; 
    
    v . z *= - 1 ; 
    return v ; 
} 
float3 SkyboxColor ( float3 v ) 
{ 
    v = ApplySkyboxOrientation ( v ) ; 
    float3 sample = SkyboxTex . Sample ( TextureSampler , v ) . xyz ; 
    
    return sample ; 
} 

float3 SkyboxColorReflected ( float3 v ) 
{ 
    v = - ApplySkyboxOrientation ( v ) ; 
    float3 sample = SkyboxTex . Sample ( TextureSampler , v ) . xyz ; 
    
    return sample ; 
} 

float3 SampleIBL ( float3 dir , float level , float farFactor ) 
{ 
    float3 sampleNear = SkyboxIBLCloseTex . SampleLevel ( TextureSampler , dir , level ) . xyz ; 
    float3 sampleFar = SkyboxIBLFarTex . SampleLevel ( TextureSampler , dir , level ) . xyz ; 
    if ( farFactor >= 1.0f ) 
    return sampleFar ; 
    else if ( farFactor <= 0 ) 
    return sampleNear ; 
    else return lerp ( sampleNear , sampleFar , farFactor ) ; 
} 

float3 AmbientSpecular ( float3 f0 , float gloss , float3 N , float3 V , float farFactor ) 
{ 
    float nv = saturate ( dot ( N , V ) ) ; 
    float3 R = - reflect ( V , N ) ; 
    R . x = - R . x ; 
    
    uint w , h , levels ; 
    SkyboxIBLCloseTex . GetDimensions ( 0 , w , h , levels ) ; 
    levels -= frame_ . Light . SkipIBLevels ; 
    float level = max ( ( 1 - gloss ) * levels , 0 ) + frame_ . Light . SkipIBLevels ; 
    float3 sample = SampleIBL ( R , level , farFactor ) ; 
    float2 env_brdf = AmbientBRDFTex . Sample ( DefaultSampler , float2 ( gloss , nv ) ) ; 
    
    return sample * ( f0 * env_brdf . x + env_brdf . y ) ; 
} 

float3 AmbientDiffuse ( float3 N , float farFactor ) 
{ 
    N . x = - N . x ; 
    
#line 79
    float3 skybox = SampleIBL ( N , 32 , farFactor ) ; 
    return skybox ; 
} 

float3 AmbientDiffuse ( float3 albedo , float3 normal , float farFactor ) 
{ 
    return albedo * AmbientDiffuse ( normal , farFactor ) ; 
} 

float4 AmbientDiffuseT ( float4 albedo , float3 normal , float farFactor ) 
{ 
    return albedo * float4 ( AmbientDiffuse ( normal , farFactor ) , 1 ) ; 
} 

float GetAmbientFarFactor ( float depth ) 
{ 
    float factor = saturate ( 1 - depth / frame_ . Light . AmbientFarDistance ) ; 
    return 1 - factor * factor ; 
} 




#line 8 "Debug.hlsli"
Texture2D < float4 > DebugTexture : register ( t0 ) ; 
Texture3D < float4 > DebugTexture3D : register ( t0 ) ; 
Texture2DArray < float > DebugTextureArray : register ( t0 ) ; 
Texture2D < float > DebugDepthTexture : register ( t0 ) ; 

SamplerState BilinearSampler : register ( s0 ) ; 

cbuffer DebugConstants : register ( b5 ) 
{ 
    float SliceTexcoord ; 
} ; 

struct ScreenVertex 
{ 
    float2 position : POSITION ; 
    float2 texcoord : TEXCOORD ; 
} ; 


#line 3 ""
void __pixel_shader ( PostprocessVertex vertex , out float4 output : SV_Target0 ) 
{ 
    output = DebugTexture . SampleLevel ( BilinearSampler , vertex . uv , 0 ) ; 
} 
