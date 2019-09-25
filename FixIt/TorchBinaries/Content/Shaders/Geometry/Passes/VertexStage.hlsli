#include "PassesDefines.hlsli"

#ifndef RENDERING_PASS
#include "GBuffer/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_GBUFFER
#include "GBuffer/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_DEPTH
#include "Depth/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_FORWARD
#include "Forward/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_HIGHLIGHT
#include "Highlight/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_FOLIAGE_STREAMING
#include "FoliageStreaming/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_TRANSPARENT
#include "Transparent/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_TRANSPARENT_FOR_DECALS
#include "TransparentForDecals/VertexStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_TEST
#include "Test/VertexStage.hlsli"

#else
#error "Undefined RENDERING_PASS"
#endif
