Texture2D<float2> AvgLuminance : register( t1 );

float get_exposure()
{
    return exp2(AvgLuminance[uint2(0, 0)].g);
}

float3 ExposedColor(float3 color, float exposure)
{
    return get_exposure() * color;
}

float LuminanceKeyValueSimple(float avgLuminance)
{
    return 1;
}

float LuminanceKeyValueKrawczyk(float avgLuminance)
{
    // "Fast Filtering and Tone Mapping using Importance sampling",
    // Balázs Tóth and László Szirmay-Kalos
    return 1.03f - 2 / (2 + log10(avgLuminance + 1));
}

float LuminanceKeyValueCendos(float avgLuminance)
{
    return lerp(LuminanceKeyValueKrawczyk(avgLuminance), LuminanceKeyValueSimple(avgLuminance), saturate(avgLuminance * 2));
}

//#define LuminanceKeyValue LuminanceKeyValueSimple
//#define LuminanceKeyValue LuminanceKeyValueKrawczyk
#define LuminanceKeyValue LuminanceKeyValueCendos

float CalculateExposure(float avgLuminance, float exposure)
{
    float avg_lum = max(avgLuminance, 0.0001f);
    float linear_exposure = LuminanceKeyValue(avg_lum) / avg_lum;
    linear_exposure = log2(max(linear_exposure, 0.0001f));
    linear_exposure += exposure;
    return linear_exposure;
}
