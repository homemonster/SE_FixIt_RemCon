// @defineMandatory NUMTHREADS 16
#include "LightDefs.hlsli"

#ifndef NUMTHREADS_X
#define NUMTHREADS_X NUMTHREADS
#endif

#ifndef NUMTHREADS_Y
#define NUMTHREADS_Y NUMTHREADS_X
#endif

#define GROUP_THREADS NUMTHREADS_X * NUMTHREADS_Y

#include <Frame.hlsli>
#include <GBuffer/GBuffer.hlsli>

cbuffer LightConstants : register( b1 ) {
	uint pointlights_num;
};

StructuredBuffer<PointLightData> LightList : register ( t13 );
RWStructuredBuffer<uint> TileIndices : register(u0);

groupshared uint sMinZ;
groupshared uint sMaxZ;
groupshared uint sTileNumLights;


void GetFrustumPlanes(out float4 frustum_planes[6], in uint3 groupID)
{
	float fMinZ = asfloat(sMinZ);
	float fMaxZ = asfloat(sMaxZ);
#ifndef COMPLEMENTARY_DEPTH
	float tileNear = linearize_depth(fMinZ, frame_.Environment.projection_matrix);
	float tileFar = linearize_depth(fMaxZ, frame_.Environment.projection_matrix);
#else
	float tileNear = linearize_depth(fMaxZ, frame_.Environment.projection_matrix);
	float tileFar = linearize_depth(fMinZ, frame_.Environment.projection_matrix);
#endif

	float2 tileMult = NUMTHREADS * 2 / frame_.Screen.resolution;
	float2 invProjMult = 1 / float2(frame_.Environment.projection_matrix._11, frame_.Environment.projection_matrix._22);
	float2 projAdd = float2(frame_.Environment.projection_matrix._31, -frame_.Environment.projection_matrix._32) * invProjMult; // this is because of the Ansel
	float2 pMin = ((float2)groupID.xy * tileMult - 1) * invProjMult + projAdd;
	float2 pMax = pMin + tileMult * invProjMult;

	frustum_planes[0] = float4(1, 0, pMin.x, 0);
	frustum_planes[1] = float4(-1, 0, -pMax.x, 0);
	frustum_planes[2] = float4(0, -1, pMin.y, 0);
	frustum_planes[3] = float4(0, 1, -pMax.y, 0);

	frustum_planes[4] = float4(0, 0, -1, tileNear);
	frustum_planes[5] = float4(0, 0, 1, -tileFar);


	uint i;
	[unroll] for (i = 0; i<4; i++)
		frustum_planes[i].xyz = normalize(frustum_planes[i].xyz);
}


[numthreads(NUMTHREADS_X, NUMTHREADS_Y, 1)]
void __compute_shader(
	uint3 dispatchThreadID : SV_DispatchThreadID,
	uint3 groupThreadID : SV_GroupThreadID,
	uint3 GroupID : SV_GroupID,
	uint ThreadIndex : SV_GroupIndex) 
{
    [branch]
	if(ThreadIndex == 0) 
    {
		sMinZ = asuint(1.0f);
		sMaxZ = 0;
		sTileNumLights = 0;
	}

	
#ifndef MS_SAMPLE_COUNT
    SurfaceInterface gbuffer = read_gbuffer(frame_.Screen.offset + dispatchThreadID.xy);

    float minz = gbuffer.native_depth;
	float maxz = gbuffer.native_depth;
#else
    [unroll] for (uint sample = 0; sample < MS_SAMPLE_COUNT; ++sample) {
		SurfaceInterface gbuffer = read_gbuffer(frame_.Screen.offset + dispatchThreadID.xy, sample);

        minz = min(minz, gbuffer.native_depth);
        maxz = max(maxz, gbuffer.native_depth);
    }
#endif

    GroupMemoryBarrierWithGroupSync();

#ifndef COMPLEMENTARY_DEPTH
	if (minz < 1) {
		InterlockedMin(sMinZ, asuint(minz));
		InterlockedMax(sMaxZ, asuint(maxz));
	}
#else
	if (maxz > 0) {
		InterlockedMin(sMinZ, asuint(minz));
		InterlockedMax(sMaxZ, asuint(maxz));
	}
#endif

    GroupMemoryBarrierWithGroupSync();

	float4 frustum_planes[6];
	GetFrustumPlanes(frustum_planes, GroupID);
    
    uint tileIndex = GroupID.y * frame_.Light.tiles_x + GroupID.x;

    [loop]
	for (uint index = ThreadIndex; index < pointlights_num; index += GROUP_THREADS) {
        PointLightData light = LightList[index];
        float4 vs_light = float4(light.positionView, 1);
                
        bool in_frustum = true;
	    [unroll] for (uint i = 0; i < 6; ++i) {
	        float d = dot(frustum_planes[i], vs_light);
			in_frustum = in_frustum && (d >= -light.range);
		}   

        [branch] if (in_frustum) {
            uint listIndex;
            InterlockedAdd(sTileNumLights, 1, listIndex);
            TileIndices[frame_.Light.tiles_num + tileIndex * MAX_TILE_LIGHTS + listIndex] = index;
        }
    }

    GroupMemoryBarrierWithGroupSync();

    [branch]
	if(ThreadIndex == 0) {
        TileIndices[tileIndex] = sTileNumLights;
    }

	return;
}
