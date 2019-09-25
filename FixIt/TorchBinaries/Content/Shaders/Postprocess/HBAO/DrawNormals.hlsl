// @define FETCH_GBUFFER_NORMAL 1
// @define ENABLE_BACKGROUND_AO 1
// @define ENABLE_FOREGROUND_AO 1

#include <Debug/Debug.hlsli>

#include "FetchNormal_Common.hlsli"

void __pixel_shader(PostprocessVertex vertex, out float4 output : SV_Target0)
{
    float3 normal = -FetchFullResViewNormal(vertex);
	output = float4(normal, 1);
}
