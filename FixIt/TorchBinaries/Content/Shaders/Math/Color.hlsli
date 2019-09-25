#ifndef COLOR_H
#define COLOR_H

// Some funcions taken from: http://www.chilliant.com/rgb2hsv.html

float COLOR_EPSILON = 1e-10;

// color space conversions
float3 hsv_to_rgb(float3 hsv)
{
    float4 K = float4(1.0f, 2.0f / 3.0f, 1.0f / 3.0f, 3.0f);
    float3 p = abs(frac(hsv.xxx + K.xyz) * 6.0f - K.www);
    return hsv.z * lerp(K.xxx, saturate(p - K.xxx), hsv.y);
}

float3 rgb_to_hsv(float3 rgb)
{
    float4 K = float4(0.0f, -1.0f / 3.0f, 2.0f / 3.0f, -1.0f);
    float4 p = lerp(float4(rgb.bg, K.wz), float4(rgb.gb, K.xy), step(rgb.b, rgb.g));
    float4 q = lerp(float4(p.xyw, rgb.r), float4(rgb.r, p.yzx), step(p.x, rgb.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return float3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

float3 srgb_to_rgb(float3 srgb)
{
    return (srgb <= 0.04045) ? srgb / 12.92 : pow((abs(srgb) + 0.055) / 1.055, 2.4);
}

float srgb_to_rgb_fast(float srgb)
{
    return pow(abs(srgb), 2.2f);
}

float4 srgba_to_rgba(float4 srgb)
{
    return float4(srgb_to_rgb(srgb.rgb), srgb.a);
}

float3 rgb_to_srgb(float3 rgb)
{
    return (rgb <= 0.0031308) ? rgb * 12.92 : (pow(abs(rgb), 1 / 2.4) * 1.055 - 0.055);
}

// Returns relative luminance. To not be confused with "luma" which
// is defined by same coefficients multiplied by gamma compressed
// sRGB values.
float GetRelativeLuminance(float3 rgb)
{
    // ITU-R BT.709 Coefficients
    // http://www.itu.int/rec/R-REC-BT.709
    return dot(rgb, float3(0.2126, 0.7152, 0.0722));
}

float3 ColorShift(float3 rgb, float3 hsv_shift, float rate) 
{
	float3 shiftedHSV = rgb_to_hsv(rgb) + hsv_shift;
	
	shiftedHSV.x = shiftedHSV.x % 1.0f;

	if (shiftedHSV.x < 0) 
		shiftedHSV.x += 1.0f;

	shiftedHSV.y = clamp(shiftedHSV.y, 0, 1.0f);
	shiftedHSV.z = clamp(shiftedHSV.z, 0, 1.0f);

	return lerp(rgb, hsv_to_rgb(shiftedHSV), rate);
}

float3 hsv_shift_to_hsv(float3 hsv_shift) {
	return float3((hsv_shift.xyz + 1) / 2);
}

float3 hsv_to_hsv_shift(float3 hsv) {
	return float3(hsv.xyz * 2 - 1);
}

float3 hsv_shift_to_rgb(float3 hsv_shift) {
	return hsv_to_rgb(hsv_shift_to_hsv(hsv_shift));
}

float3 rgb_to_hsv_shift(float3 rgb) {
	return hsv_to_hsv_shift(rgb_to_hsv(rgb));
}

float3 ToGrayScale(float3 color)
{
    float3 grayXfer = float3(0.3, 0.59, 0.11);
    return dot(grayXfer, color);
}

#endif // COLOR_H
