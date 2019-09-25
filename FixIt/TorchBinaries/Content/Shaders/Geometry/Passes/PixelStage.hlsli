#include "PassesDefines.hlsli"

#ifndef RENDERING_PASS
#include "GBuffer/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_GBUFFER
#include "GBuffer/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_DEPTH
#include "Depth/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_FORWARD
#include "Forward/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_HIGHLIGHT
#include "Highlight/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_FOLIAGE_STREAMING
#include "FoliageStreaming/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_TRANSPARENT
#include "Transparent/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_TRANSPARENT_FOR_DECALS
#include "TransparentForDecals/PixelStage.hlsli"

#elif RENDERING_PASS == RENDERING_PASS_TEST
#include "Test/PixelStage.hlsli"

#else
#error "Undefined or unresolved RENDERING_PASS"
#endif

