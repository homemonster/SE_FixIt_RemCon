
struct TransparentStruct
{
    float4 Color;
    float4 ColorAdd;
    float4 ShadowMultiplier;
    float4 LightMultiplier;

    float Reflectivity;
    float Fresnel;
    float ReflectionShadow;
    float Gloss;

    float GlossTextureAdd;
    float SpecularColorFactor;
    float Radius;
    float SoftParticleDistanceScale;
};

Texture2D<float4> Texture : register(t0);
Texture2D<float4> TextureNormalGloss : register(t1);
Texture2D<float4> TextureRefraction : register(MERGE(t, LBUFFER_SLOT));
Texture2D<float> TextureDepth : register(MERGE(t, DEPTHBUFFER_SLOT));

cbuffer TransparentStruct : register (MERGE(b, MATERIAL_SLOT))
{
    TransparentStruct TransparentConstants;
};
