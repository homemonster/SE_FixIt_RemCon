#ifndef SPECULAR_PHONG__
#define SPECULAR_PHONG__

#include <Math/Math.hlsli>
#include "Utils.hlsli"

float3	fresnel(	float cosTheta,
					float3 reflectivity,
					float fresnelStrength	)
{
	//schlick's fresnel approximation
	float f = saturate( 1.0 - cosTheta );
	float f2 = f*f; f *= f2 * f2;
	return lerp( reflectivity, float3(1.0,1.0,1.0), f*fresnelStrength );
}

float3 SpecularPhong(float ln, float nh, float vn, float vh, float3 f0, float gloss)
{
	gloss = min( gloss, 0.995 );
	float specExp = -10.0 / log2( gloss*0.968 + 0.03 );
	specExp *= specExp;
    float phongNormalize = (specExp + 4.0) / (8.0*M_PI);

	//blinn-phong term
	float phong = phongNormalize * pow( nh, specExp );
	
	//horizon occlusion
	float horizon = 1.0 - ln;
	horizon *= horizon; horizon *= horizon;
	phong = phong - phong*horizon;

	//fresnel
	float glossAdjust = gloss*gloss;
	float3 fres = fresnel(	vn,
						f0,
						glossAdjust	);

	//add it on
    return min(fres * phong, 100);
}

float4	fresnel(float cosTheta,
    float4 reflectivity,
    float fresnelStrength)
{
    //schlick's fresnel approximation
    float f = saturate(1.0 - cosTheta);
    float f2 = f*f; f *= f2 * f2;
    return lerp(reflectivity, float4(1.0, 1.0, 1.0, 1.0), f*fresnelStrength);
}

float4 SpecularPhongT(float ln, float nh, float vn, float vh, float4 f0, float gloss)
{
    gloss = min(gloss, 0.995);
    float specExp = -10.0 / log2(gloss*0.968 + 0.03);
    specExp *= specExp;
    float phongNormalize = (specExp + 4.0) / (8.0*M_PI);

    //blinn-phong term
    float phong = phongNormalize * pow(nh, specExp);

    //horizon occlusion
    float horizon = 1.0 - ln;
    horizon *= horizon; horizon *= horizon;
    phong = phong - phong*horizon;

    //fresnel
    float glossAdjust = gloss*gloss;
    float4 fres = fresnel(vn,
        f0,
        glossAdjust);

    //add it on
    return min(fres * phong, 100);
}

float	fresnel(float cosTheta,
    float reflectivity,
    float fresnelStrength)
{
    //schlick's fresnel approximation
    float f = saturate(1.0 - cosTheta);
    float f2 = f * f; f *= f2 * f2;
    return lerp(reflectivity, 1.0, f*fresnelStrength);
}

float SpecularPhongS(float ln, float nh, float vn, float vh, float f0, float gloss)
{
    gloss = min(gloss, 0.995);
    float specExp = -10.0 / log2(gloss*0.968 + 0.03);
    specExp *= specExp;
    float phongNormalize = (specExp + 4.0) / (8.0*M_PI);

    //blinn-phong term
    float phong = phongNormalize * pow(nh, specExp);

    //horizon occlusion
    float horizon = 1.0 - ln;
    horizon *= horizon; horizon *= horizon;
    phong = phong - phong * horizon;

    //fresnel
    float glossAdjust = gloss * gloss;
    float fres = fresnel(vn,
        f0,
        glossAdjust);

    //add it on
    return min(fres * phong, 100);
}

#endif
