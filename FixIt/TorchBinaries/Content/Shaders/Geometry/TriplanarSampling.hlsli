#ifndef INCLUDE_TRIPLANAR_SAMPLING_HLSLI
#define INCLUDE_TRIPLANAR_SAMPLING_HLSLI

#include <Geometry/Materials/TriplanarMaterialConstants.hlsli>

//#define SAMPLING_DEBUG 1

//#define LQ 1
//#define MQ 1

#ifdef LQ
#define TRIPLANAR_FAR_PLAIN 1
#define TRIPLANAR_MULTI_DITHER 1
#define GetNearestDistanceAndScale GetNearestDistanceAndScaleLoop
#define TRIPLANAR_STEEP_WEIGHTS 1
static const float NEARFAR_TRANSITION_LENGTH = 0.1f;
#define SAMPLE_TEXTURE SampleFast
#define TILING_MULTIPLIER float4(1, 1, 1, 1)
#define TILING_TYPE(x) x.SimpleTiling
#elif defined(MQ)
#define GetNearestDistanceAndScale GetNearestDistanceAndScaleLoop
#define TRIPLANAR_STEEP_WEIGHTS 1
static const float NEARFAR_TRANSITION_LENGTH = 0.3f;
#define SAMPLE_TEXTURE SampleFast
#define TILING_MULTIPLIER float4(1, 1, 1, 1)
#define TILING_TYPE(x) x.SimpleTiling
#else
#define TRIPLANAR_ADD 1
//#define TRIPLANAR_DIRT 1
#define GetNearestDistanceAndScale GetNearestDistanceAndScaleLoop
static const float NEARFAR_TRANSITION_LENGTH = 0.75f;
#define SAMPLE_TEXTURE SampleTiled
#define TILING_MULTIPLIER float4(2, 2, 2, 4)
#define TILING_TYPE(x) x.StandardTiling
#endif

#define DEBUG_TEX_COORDS 0

struct TriplanarInterface
{
    float3 N;
    float3 weights;
    float3 dpxperp;
    float3 dpyperp;
    float2 ddxTexcoords[3];
    float2 ddyTexcoords[3];
    float3 texcoords;
    float d;
};

struct TriplanarOutput
{
    float4 ext;
    float4 cm;
    float4 ng;
    uint ctr;
};

float3 GetTriplanarWeights(float3 n)
{
    float3 w = saturate(abs(n) - 0.55);

    // This speeds up rendering when dynamic branching optimizations within tri-planar shader are enabled
    w *= w;
    w *= w;
#ifdef TRIPLANAR_STEEP_WEIGHTS
    w *= w;
    w *= w;
#endif

    // normalize
    return w / dot(w, 1);
}

float4 SampleTiled(Texture2DArray<float4> tex, float3 uvw, float2 ddx, float2 ddy, float tilingScale)
{
    float k = RandomTexture.SampleGrad(TextureSampler, uvw.xy * tilingScale, ddx * tilingScale, ddy * tilingScale);

    float l = k*8.0;
    float i = floor(l);
    float f = frac(l);

    float2 offa = sin(float2(3.0, 7.0)*(i + 0.0)); // can replace with any other hash
    float2 offb = sin(float2(3.0, 7.0)*(i + 1.0)); // can replace with any other hash

    float4 cola = tex.SampleGrad(TextureSampler, float3(uvw.xy + 0.4*offa, uvw.z), ddx, ddy);
    float4 colb = tex.SampleGrad(TextureSampler, float3(uvw.xy + 0.4*offb, uvw.z), ddx, ddy);

    return lerp(cola, colb, smoothstep(0.2, 0.8, f));
}

float4 SampleFast(Texture2DArray<float4> tex, float3 uvw, float2 ddx, float2 ddy, float tilingScale)
{
    return tex.SampleGrad(TextureSampler, uvw, ddx, ddy);
}

float4 SampleTriplanarGrad(Texture2DArray<float4> tex, int sliceIndexXZnY, int sliceIndexY,
    float3 texcoords, TriplanarInterface triplanarInput, float scale, float tilingScale, uniform int forcedAxis, out uint ctr)
{
    float2 texcoordsX = texcoords.zy;
    float2 texcoordsY = texcoords.xz;
    float2 texcoordsZ = texcoords.xy;

    float4 res0 = SAMPLE_TEXTURE(tex, float3(texcoordsX, sliceIndexXZnY), triplanarInput.ddxTexcoords[0] * scale, triplanarInput.ddyTexcoords[0] * scale, tilingScale);
    float4 res1 = SAMPLE_TEXTURE(tex, float3(texcoordsY, sliceIndexY), triplanarInput.ddxTexcoords[1] * scale, triplanarInput.ddyTexcoords[1] * scale, tilingScale);
    float4 res2 = SAMPLE_TEXTURE(tex, float3(texcoordsZ, sliceIndexXZnY), triplanarInput.ddxTexcoords[2] * scale, triplanarInput.ddyTexcoords[2] * scale, tilingScale);

    ctr = 1;
    if (forcedAxis == 0)
        return res0;
    else if (forcedAxis == 1)
        return res1;
    else if (forcedAxis == 2)
        return res2;

    ctr = 3;
    return res0 * triplanarInput.weights.x + res1 * triplanarInput.weights.y + res2 * triplanarInput.weights.z;
}

float4 GetNearestDistanceAndScaleLog(float distance, float4 materialSettings)
{
    float curDistance = 0;
    float curScale = materialSettings.x;

    float nextDistance = materialSettings.y;
    float nextScale = materialSettings.z;

    float stepDistance = materialSettings.w;

    float xx = log(distance / nextDistance) / log(stepDistance);
    if (xx > 0)
    {
        int x = int(xx) + 1;
        curDistance = nextDistance * pow(abs(stepDistance), x - 1);
        nextDistance = curDistance * stepDistance;

        curScale = pow(abs(nextScale), x);
        nextScale *= curScale;
    }
    return float4(curDistance, nextDistance, curScale, nextScale);
}

float4 GetNearestDistanceAndScaleLoop(float distance, float4 materialSettings, out int counter)
{
    //float curDistance = 0;
    //float curScale = materialSettings.x;

    //float nextDistance = materialSettings.y;
    //float nextScale = materialSettings.z;

    //float4 output = float4(curDistance, nextDistance, curScale, nextScale);
    //float2 step = float2(materialSettings.w, materialSettings.z);

    //while (output.y < distance)
    //{
    //  output.xz = output.yw;
    //  output.yw *= step;
    //}
    //return output;

    float curDistance = 0;
    float curScale = materialSettings.x;

    float nextDistance = materialSettings.y;
    float nextScale = materialSettings.z;

    counter = 0;

    while (nextDistance < distance)
    {
        curDistance = nextDistance;
        curScale = nextScale;

        nextDistance *= materialSettings.w;
        nextScale *= materialSettings.z;

        if (++counter > 16)
        {
            break;
        }
    }
    return float4(curDistance, nextDistance, curScale, nextScale);
}

struct SlicesNum
{
    int sliceColorMetalXZnY;
    int sliceColorMetalY;
    int sliceNormalGlossXZnY;
    int sliceNormalGlossY;
    int sliceExtXZnY;
    int sliceExtY;
};

SlicesNum GetSlices(TriplanarMaterialConstants material, int nDistance)
{
    SlicesNum slices;
    slices.sliceColorMetalXZnY = material.slices[nDistance].slices1.x;
    slices.sliceColorMetalY = material.slices[nDistance].slices1.y;
    slices.sliceNormalGlossXZnY = material.slices[nDistance].slices1.z;
    slices.sliceNormalGlossY = material.slices[nDistance].slices1.w;
    slices.sliceExtXZnY = material.slices[nDistance].slices2.x;
    slices.sliceExtY = material.slices[nDistance].slices2.y;
    return slices;
}

TriplanarOutput SampleTriplanarDistance(TriplanarMaterialConstants material, TriplanarInterface triplanarInput, 
    uniform int forcedAxis, float scale, float distance, float3 offset)
{
    TilingSetup tiling = TILING_TYPE(material);

    int textureIndex = 0;
    if (tiling.distance_and_scale_far.y > 0 && distance >= tiling.distance_and_scale_far.y)
    {
        scale = tiling.distance_and_scale_far.x;
        textureIndex = tiling.distance_and_scale_far.z;
    }

    if (tiling.distance_and_scale_far2.y > 0 && distance >= tiling.distance_and_scale_far2.y)
    {
        scale = tiling.distance_and_scale_far2.x;
        textureIndex = tiling.distance_and_scale_far2.z;
    }

    if (tiling.distance_and_scale_far3.y > 0 && distance >= tiling.distance_and_scale_far3.y)
    {
        scale = tiling.distance_and_scale_far3.x;
        textureIndex = tiling.distance_and_scale_far3.z;
    }
    scale = 1.0f / scale;
    int textureIndexClamp = min(2, textureIndex);
    SlicesNum slices = GetSlices(material, textureIndexClamp);

    float3 texcoords = (triplanarInput.texcoords + offset) * scale;
    uint ctr;
    TriplanarOutput output;
    output.cm = float4(material.color_far3.xyz, 0);
    output.ng = float4(0.5, 0.5, 1, 0);
    output.ext = float4(1, 0, 0, 0);
    output.ctr = 0;
    [branch]
    if (textureIndex < 3)
    {
        output.cm = SampleTriplanarGrad(ColorMetal, slices.sliceColorMetalXZnY, slices.sliceColorMetalY,
            texcoords, triplanarInput, scale, tiling.TilingScale, forcedAxis, ctr);
        output.cm = saturate(output.cm);
        output.ctr += ctr;

#ifdef TRIPLANAR_DIRT
        [branch]
        if (tiling.extension_detail_scale > 0)
        {
            float3 texcoords = triplanarInput.texcoords * tiling.extension_detail_scale;
            float4 highPass = SampleTriplanarGrad(Ext, slices.sliceExtXZnY, slices.sliceExtY,
                texcoords, triplanarInput, tiling.extension_detail_scale, tiling.TilingScale, forcedAxis, ctr);
            output.cm.xyz *= highPass.zzz;
            output.ctr += ctr;
        }
#endif

#ifdef DEBUG
#if DEBUG_TEX_COORDS
        output.cm.rgb = texcoords;
#endif
#endif

#ifndef TRIPLANAR_FAR_PLAIN
    }
#endif
    output.ng = SampleTriplanarGrad(NormalGloss, slices.sliceNormalGlossXZnY, slices.sliceNormalGlossY,
        texcoords, triplanarInput, scale, tiling.TilingScale, forcedAxis, ctr);
    output.ctr += ctr;

#ifdef TRIPLANAR_ADD
    output.ext = SampleTriplanarGrad(Ext, slices.sliceExtXZnY, slices.sliceExtY,
        texcoords, triplanarInput, scale, tiling.TilingScale, forcedAxis, ctr);
    output.ctr += ctr;
#endif
#ifdef TRIPLANAR_FAR_PLAIN
}
#endif
    return output;
}

void SampleTriplanar(TriplanarMaterialConstants material, TriplanarInterface triplanarInput,
    out TriplanarOutput output, uniform int forcedAxis = -1)
{
    float distance = triplanarInput.d;
    TilingSetup tiling = TILING_TYPE(material);
    float4 materialSettings = tiling.distance_and_scale * TILING_MULTIPLIER;
    int materialLod;
    float4 das = GetNearestDistanceAndScale(distance, materialSettings, materialLod);
    float distanceNear = das.x;
    float distanceFar = das.y;
    float scaleWeight = saturate(((distance - distanceNear) / (distanceFar - distanceNear) - (1 - NEARFAR_TRANSITION_LENGTH)) / NEARFAR_TRANSITION_LENGTH);

    float3 offset = 0;

    [branch]
    if (scaleWeight <= 0.005f)
    {
#ifdef USE_VOXEL_DATA
        float pixelizationMultiplier = step(materialSettings.y, distance);
        offset = pixelizationMultiplier * object_.voxel_offset;
#endif
        output = SampleTriplanarDistance(material, triplanarInput, forcedAxis, das.z, distanceNear, offset);
    }
    else if (scaleWeight >= 0.995f)
    {
#ifdef USE_VOXEL_DATA
        offset = object_.voxel_offset;
#endif
        output = SampleTriplanarDistance(material, triplanarInput, forcedAxis, das.w, distanceFar, offset);
    }
    else
    {
        float3 offsetFar = 0;
#ifdef USE_VOXEL_DATA
        float pixelizationMultiplier = step(materialSettings.y, distance);
        offset = pixelizationMultiplier * object_.voxel_offset;
        offsetFar = object_.voxel_offset;
#endif
        TriplanarOutput nearOutput = SampleTriplanarDistance(material, triplanarInput, forcedAxis, das.z, distanceNear, offset);
        TriplanarOutput farOutput = SampleTriplanarDistance(material, triplanarInput, forcedAxis, das.w, distanceFar, offsetFar);
        output.ext = lerp(nearOutput.ext, farOutput.ext, scaleWeight);
        output.cm = lerp(nearOutput.cm, farOutput.cm, scaleWeight);
        output.ng = lerp(nearOutput.ng, farOutput.ng, scaleWeight);
        output.ctr = nearOutput.ctr + farOutput.ctr;
    }
    if (frame_.Voxels.DebugVoxelLod == 2.0f)
    {
        float3 debugColor = DEBUG_COLORS[clamp(materialLod, 0, 15)] - .2;
        output.cm = float4(debugColor, 0);
    }
}

void SampleTriplanarBranched(TriplanarMaterialConstants material, TriplanarInterface triplanarInput, out TriplanarOutput triplanarOutput)
{
    const float threshold = 0.995f;

    [branch]
    if (triplanarInput.weights.x >= threshold)
    {
        SampleTriplanar(material, triplanarInput, triplanarOutput, 0);
    }
    else
    {
        [branch]
        if (triplanarInput.weights.y >= threshold)
        {
            SampleTriplanar(material, triplanarInput, triplanarOutput, 1);
        }
        else
        {
            [branch]
            if (triplanarInput.weights.z >= threshold)
            {
                SampleTriplanar(material, triplanarInput, triplanarOutput, 2);
            }
            else
            {
                SampleTriplanar(material, triplanarInput, triplanarOutput);
            }
        }
    }
}

float3x3 TriplanarTangentSpace(TriplanarInterface triplanarInput, int index)
{
    float3 T = triplanarInput.dpyperp * triplanarInput.ddxTexcoords[index].x + triplanarInput.dpxperp * triplanarInput.ddyTexcoords[index].x;
    float3 B = triplanarInput.dpyperp * triplanarInput.ddxTexcoords[index].y + triplanarInput.dpxperp * triplanarInput.ddyTexcoords[index].y;

    float invmax = rsqrt(max(dot(T, T), dot(B, B)));
    return float3x3(T * invmax, B * invmax, triplanarInput.N);
}

float3 GetSamplingDebugColor(uint ctr)
{
    switch (ctr)
    {
    case 255:
        return float3(0, 0, 0);
    case 0:
        return float3(0, 0, 1);
    case 1:
    case 2:
    case 3: // planar
        return float3(0, 1, 1);
    case 4:
    case 5:
    case 6: // planar near / far
        return float3(0, 1, 0);
    case 7:
    case 8:
    case 9: // triplanar
        return float3(1, 1, 0);
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18: // triplanar near / far
        return float3(1, 0, 1);
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
        return float3(0.5, 0, 0);
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
        return float3(1, 0, 0);
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
        return float3(1.0, 0.5, 0.5);

    default:
        return float3(1, 1, 1);
    }
}

void FeedOutputTriplanar(PixelInterface pixel, TriplanarInterface triplanarInput, TriplanarOutput triplanar, inout MaterialOutputInterface output)
{
    float3 tgN = triplanar.ng.xyz * 2 - 1;
    tgN.x = -tgN.x;

    float3 nx = mul(tgN, TriplanarTangentSpace(triplanarInput, 0));
    float3 ny = mul(tgN, TriplanarTangentSpace(triplanarInput, 1));
    float3 nz = mul(tgN, TriplanarTangentSpace(triplanarInput, 2));

    triplanar.ng.xyz = nx * triplanarInput.weights.x + ny * triplanarInput.weights.y + nz * triplanarInput.weights.z;

    output.base_color = triplanar.cm.rgb;

#ifdef USE_VOXEL_DATA
    output.LOD = object_.voxelLodSize;
#endif

#ifdef SAMPLING_DEBUG
    output.base_color = GetSamplingDebugColor(triplanar.ctr);
#endif

    output.metalness = triplanar.cm.w;
    output.normal = normalize(mul(triplanar.ng.xyz, pixel.custom.world_matrix));
    output.gloss = triplanar.ng.w;
    output.emissive = triplanar.ext.y * pixel.emissive;

    output.ao = triplanar.ext.x;

#ifdef TRIPLANAR_ADD
#ifdef USE_VOXEL_DATA
    float colorMask = 1;// triplanar.ext.w;
#else
    float colorMask = 0;
#endif
#else
    float colorMask = 1;
#endif

	output.base_color *= pixel.color_mul;
	output.ao *= pixel.color_mul.x;


      output.base_color = ColorShift(output.base_color, pixel.custom.color_shift, colorMask);

//    if (pixel.custom.distance > 1500)
//        output.base_color = float3(1, 0, 1);
}

void InitilizeTriplanarInterface(PixelInterface pixel, out TriplanarInterface input)
{
    input.N = normalize(pixel.custom.normal);
    input.weights = saturate(GetTriplanarWeights(input.N));
    input.d = pixel.custom.distance;

    float3 pos_ddx = ddx(pixel.position_ws);
    float3 pos_ddy = ddy(pixel.position_ws);
    input.dpxperp = cross(input.N, pos_ddx);
    input.dpyperp = cross(pos_ddy, input.N);

    input.texcoords = pixel.custom.texcoord0;
    float2 texcoordsX = input.texcoords.zy;
    float2 texcoordsY = input.texcoords.xz;
    float2 texcoordsZ = input.texcoords.xy;

    input.ddxTexcoords[0] = ddx(texcoordsX);
    input.ddyTexcoords[0] = ddy(texcoordsX);
    input.ddxTexcoords[1] = ddx(texcoordsY);
    input.ddyTexcoords[1] = ddy(texcoordsY);
    input.ddxTexcoords[2] = ddx(texcoordsZ);
    input.ddyTexcoords[2] = ddy(texcoordsZ);
}

#endif
