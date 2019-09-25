// @defineMandatory NUMTHREADS 8
// @define DISABLE_TONEMAPPING
// @define FILL_ALPHA_LUMINANCE

#include "Filters.hlsli"
#include "Defines.hlsli"
#include <Random.hlsli>

[numthreads(NUMTHREADS_X, NUMTHREADS_Y, 1)]
void __compute_shader(uint3 dispatchThreadID : SV_DispatchThreadID)
{
	uint2 texel = dispatchThreadID.xy;
	float2 uv = (texel + 0.5f) / frame_.Screen.resolution;

    float3 sourceSample = Source[texel].xyz;

    if (frame_.Post.GrainStrength > 0)
    {
	    RandomGenerator random;
        float grainRounding = 1;
        if (frame_.Post.GrainSize > 0)
        {
            int gs = frame_.Post.GrainSize * 2 + 1;
            float2 grainDist = (float2)(texel % gs) - frame_.Post.GrainSize;
            grainRounding = 1 - dot(grainDist, grainDist) / (frame_.Post.GrainSize * frame_.Post.GrainSize * 2.0f);
	        random.SetSeed(((texel.x + gs) / gs)*((texel.y + gs) / gs)*int(frame_.frameTime*1000));
        }
        else random.SetSeed(texel.x * texel.y * int(frame_.frameTime*1000));
        sourceSample -= saturate(frame_.Post.GrainAmount - random.GetFloat()) * grainRounding * frame_.Post.GrainStrength;
    }
	
    float3 color = sourceSample;

#ifndef DISABLE_TONEMAPPING         
    float3 exposed_color = ExposedColor(sourceSample, 0);
    float dirt = Dirt.SampleLevel(BilinearSampler, uv, 0) * frame_.Post.BloomDirtRatio + (1 - frame_.Post.BloomDirtRatio);
	color = exposed_color + Bloom.SampleLevel(BilinearSampler, uv, 0).xyz * frame_.Post.BloomMult * dirt;
    
	//color = ToneMapNeutral(color, frame_.Post.WhitePoint);
	color = ToneMapFilmic_Hable(color, frame_.Post.WhitePoint);
	//color = ToneMapFilmic_Hejl(color, frame_.Post.WhitePoint);
#endif

#ifndef DISABLE_COLOR_FILTERS
    color = ApplyBasicFilters(color);
    // FIXME - does not work correctly
    color = VibranceFilter(color);
    // FIXME - does not work correctly
    //color = TemperatureFilter(color);
    color = SepiaFilter(color);
#endif

	color = saturate(color);
	color = rgb_to_srgb(color);	
#ifdef FILL_ALPHA_LUMINANCE
	float alpha = GetRelativeLuminance(color);
	Destination[texel] = float4(color, alpha);
#else
	Destination[texel] = float4(color, 1);
#endif
}
