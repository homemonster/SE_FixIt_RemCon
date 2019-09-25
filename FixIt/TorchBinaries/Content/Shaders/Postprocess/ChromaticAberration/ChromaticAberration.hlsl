// @defineMandatory NUMTHREADS 8
// @defineMandatory ITERATIONS 4, ITERATIONS 2

#include <Frame.hlsli>

#ifndef ITERATIONS
#define ITERATIONS 4
#endif

#ifndef NUMTHREADS_X
#define NUMTHREADS_X NUMTHREADS
#endif

#ifndef NUMTHREADS_Y
#define NUMTHREADS_Y NUMTHREADS_X
#endif

Texture2D<float4> Source : register( t0 );
RWTexture2D<unorm float4> Destination : register( u0 );
SamplerState BilinearSampler : register( s0 );

float2 barrelDistortion(float2 uv, float2 cc, float amt)
{
    return uv - cc * amt;
}

float linterp(float t) 
{
    return saturate(1.0 - abs(2.0*t - 1.0));
}

float remap(float t, float a, float b) 
{
    return saturate((t - a) / (b - a));
}

float4 spectrum_offset(float t)
{
    float4 ret;
    float lo = step(t, 0.5);
    float hi = 1.0 - lo;
    float w = linterp(remap(t, 1.0 / 6.0, 5.0 / 6.0));
    ret = float4(lo, 1.0, hi, 1.) * float4(1.0 - w, w, 1.0 - w, 1.);

    return pow(abs(ret), float(1.0 / 2.2));
}

static const float max_distort = 0.1;
static const int NUM_ITER = ITERATIONS * 3;
static const float reci_num_iter_f = 1.0 / float(NUM_ITER);

[numthreads(NUMTHREADS_X, NUMTHREADS_Y, 1)]
void __compute_shader(uint3 dispatchThreadID : SV_DispatchThreadID)
{
    float2 texel = dispatchThreadID.xy;
    float2 uv = (texel / frame_.Screen.resolution);

    float2 cc = uv - 0.5;
    float dist = dot(cc, cc);
    cc *= dist;

    float4 sumcol = 0;
    float4 sumw = 0;
    [unroll]
    for (int i = 0; i < NUM_ITER; ++i)
    {
        float t = float(i) * reci_num_iter_f;
        float4 w = spectrum_offset(t);
        sumw += w;
        sumcol += w * Source.SampleLevel(BilinearSampler, barrelDistortion(uv, cc, frame_.Post.ChromaticFactor*t), 0);
    }

    //Destination[texel] = Source[texel];
    Destination[texel] = float4((sumcol / sumw * (1 - pow(abs(dist * frame_.Post.VignetteStart), frame_.Post.VignetteLength))).rgb, 1);
}
