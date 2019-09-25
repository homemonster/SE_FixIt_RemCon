#line 1 ""


#line 1 "Template.hlsli"





#line 1 "Frame.hlsli"




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



#line 4 "Frame.hlsli"


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




#line 8 "Template.hlsli"


#line 12


struct ProjectionConstants 
{ 
    matrix view_proj_matrix ; 
} ; 

cbuffer Projection : register ( b1 ) 
{ 
    ProjectionConstants projection_ ; 
} ; 

float4x4 get_view_proj_matrix ( ) 
{ 
    return projection_ . view_proj_matrix ; 
} 

float4 WorldToClip ( float3 worldPosition ) 
{ 
    return mul ( float4 ( worldPosition , 1 ) , projection_ . view_proj_matrix ) ; 
} 





struct ObjectConstants 
{ 
    
#line 44
    
    
    
    float facing ; 
    float2 windScaleAndFreq ; 
    float foliage_multiplier ; 
    float3 CenterOffset ; 
    float __paddingNonVoxelData2 ; 
    
#line 59
    
    float4 matrix_row0 ; 
    float4 matrix_row1 ; 
    float4 matrix_row2 ; 
    
    float3 key_color ; 
    uint LOD ; 
    
    float3 color_mul ; 
    float emissive ; 
    
    float2 custom_alpha ; 
    uint depth_bias ; 
    uint material_flags ; 
    
#line 76
    
    
    
} ; 

cbuffer Object : register ( b2 ) 
{ 
    ObjectConstants object_ ; 
} ; 



matrix get_object_matrix ( ) 
{ 
    return transpose ( matrix ( object_ . matrix_row0 , object_ . matrix_row1 , object_ . matrix_row2 , float4 ( 0 , 0 , 0 , 1 ) ) ) ; 
} 





#line 95


#line 2 ""


#line 1 "Lighting/EnvAmbient.hlsli"





#line 1 "Brdf.hlsli"





#line 1 "DiffuseOrenNayar.hlsli"





#line 309 "Math/Math.hlsli"



#line 5 "DiffuseOrenNayar.hlsli"


#line 1 "Utils.hlsli"



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




#line 3 ""


#line 1 "Postprocess/PostprocessBase.hlsli"



struct PostprocessVertex 
{ 
    float4 position : SV_Position ; 
    float2 uv : TEXCOORD0 ; 
} ; 




#line 5 ""
Texture2D < float3 > Src0 : register ( t0 ) ; 
Texture2D < float3 > Src1 : register ( t1 ) ; 
Texture2D < float3 > Src2 : register ( t2 ) ; 
Texture2D < float3 > Src3 : register ( t3 ) ; 
Texture2D < float3 > Src4 : register ( t4 ) ; 
Texture2D < float3 > Src5 : register ( t5 ) ; 

void __pixel_shader ( PostprocessVertex vertex , 
out float3 output0 : SV_Target0 , 
out float3 output1 : SV_Target1 , 
out float3 output2 : SV_Target2 , 
out float3 output3 : SV_Target3 , 
out float3 output4 : SV_Target4 , 
out float3 output5 : SV_Target5 ) 
{ 
    output0 = Src0 [ vertex . position . xy ] ; 
    output1 = Src1 [ vertex . position . xy ] ; 
    output2 = Src2 [ vertex . position . xy ] ; 
    output3 = Src3 [ vertex . position . xy ] ; 
    output4 = Src4 [ vertex . position . xy ] ; 
    output5 = Src5 [ vertex . position . xy ] ; 
} 
