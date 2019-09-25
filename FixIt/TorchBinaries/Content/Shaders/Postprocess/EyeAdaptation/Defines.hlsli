cbuffer HistogramConstants : register(b1)
{
	float4 HistogramScaleOffset;
	float HistogramMinBrightness;
	float HistogramMaxBrightness;
	float HistogramMinFilter;
	float HistogramMaxFilter;
	// x: width, y: height, z: 1/(width*height), w: min luminance threshold
    float4 HistogramGatherArea;
    float HistogramSkyboxFactor;
    float _pad0, _pad1, _pad2;
};
