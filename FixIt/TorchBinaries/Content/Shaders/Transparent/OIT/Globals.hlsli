#include <Lighting/LightingModel.hlsli>

void WeightedOITCendos(float4 color, float linearZ, float z, float weightFactor, out float4 accumTarget, out float4 coverageTarget)
{
    // clip colors below very low transparency
    clip(color.a - 0.0001f);
    
    // apply fog
    color = float4(Fog(color.rgb / color.a, -linearZ) * color.a, color.a);

    // Insert your favorite weighting function here. The color-based factor
    // avoids color pollution from the edges of wispy clouds. The z-based
    // factor gives precedence to nearer surfaces.
    //float invZ = max(0.005, 1 / max(-linearZ, 1.0f) );// *color.a;// clamp(1 + linearZ / 200, 0.01, 1);
    //float invZ = clamp(1 + linearZ / 200, 0.01, 1);
    float invZ = (1 + (linearZ + 3) / 200) * color.a;
    invZ = pow(abs(invZ), 32);
    invZ = clamp(invZ, 0.01, 1);
    float weight = invZ * weightFactor;
    // Blend Func: ONE, ONE
    // Switch to premultiplied alpha and weight
    accumTarget = color * weight;

    // Blend Func: zero, 1-source
    coverageTarget = color.a;
}

void PremultAlpha(float4 color, float linearZ, float z, float weightFactor, out float4 accumTarget, out float4 coverageTarget)
{
    accumTarget = color;
    coverageTarget = 0;
}

void DebugUniformAccum(float4 color, float linearZ, float z, float weightFactor, out float4 accumTarget, out float4 coverageTarget)
{
	accumTarget = 1;
	coverageTarget = 0;
}

void DebugUniformAccumOIT(float4 color, float linearZ, float z, float weightFactor, out float4 accumTarget, out float4 coverageTarget)
{
    clip(color.a - 0.0001f);
	accumTarget = 1;
	coverageTarget = 0;
}

#ifdef DEBUG_UNIFORM_ACCUM
	#ifdef OIT
		#define TransparentColorOutput DebugUniformAccumOIT
	#else
		#define TransparentColorOutput DebugUniformAccum
	#endif
#else 
	#ifdef OIT
		#define TransparentColorOutput WeightedOITCendos
	#else
		#define TransparentColorOutput PremultAlpha
	#endif
#endif
