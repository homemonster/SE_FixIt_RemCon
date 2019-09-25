// @define SAMPLE_FREQ_PASS

#include "Light.hlsli"
#include <Postprocess/PostprocessBase.hlsli>
#include <VertexTransformations.hlsli>

StructuredBuffer<PointLightData> LightList : register (t13);
StructuredBuffer<uint> TileIndices : register(t14);

void __pixel_shader(PostprocessVertex vertex, out float3 output : SV_Target0
#ifdef SAMPLE_FREQ_PASS
	, uint sample_index : SV_SampleIndex
#endif
	)
{
	uint2 tileCoord = vertex.position.xy;
	tileCoord = tileCoord % frame_.Screen.resolution;
	tileCoord /= 16;
    uint tileIndex = mad(frame_.Light.tiles_x, tileCoord.y, tileCoord.x);// tileCoord.y * frame_.Screen.tiles_x + tileCoord.x;

	uint numLights = min(TileIndices[tileIndex], MAX_TILE_LIGHTS);

#if !defined(MS_SAMPLE_COUNT) || defined(PIXEL_FREQ_PASS)
	SurfaceInterface input = read_gbuffer(vertex.position.xy);
#else
	SurfaceInterface input = read_gbuffer(vertex.position.xy, sample_index);
#endif

	if(input.native_depth == DEPTH_CLEAR)
		discard;

	// in view space
	float3 N = mul(input.N, (float3x3) frame_.Environment.view_matrix);
	float3 V = input.VView;

	float3 acc = 0;

	[loop]
	for(uint i = 0; i < numLights; i++) 
	{
        uint index = TileIndices[frame_.Light.tiles_num + mad(MAX_TILE_LIGHTS, tileIndex, i)];
		PointLightData light = LightList[index];

		float3 L = light.positionView - input.positionView;
		float distance = length(L);

		float range = light.range;
        if (distance < range)
        {
    		L /= distance;
    		float3 H = normalize(V + L);

            float2 attenuation = GetAttenuation(distance, range, light.fallOff);

            float ao = saturate(1 - (1 - input.ao) * frame_.Light.aoPointLight);

		    float3 light_factor = attenuation.x * light.color * ao;
            if (dot(light_factor, light_factor) > 0.0000001f)
            {
                acc += light_factor * MaterialRadiance(input.albedo, 1, input.f0, input.gloss * light.glossFactor, N, L, V, H, light.diffuseFactor * attenuation.y);
            }
        }
	}

	output = acc;
}
