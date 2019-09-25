#include "Declarations.hlsli"

#include <Lighting/Brdf.hlsli>
#include <Lighting/LightingModel.hlsli>
#include <Lighting/EnvAmbient.hlsli>

#include <Shadows/Csm.hlsli>

struct ForwardConstants
{
    matrix ProjectionMatrix;
};

cbuffer Frame : register(MERGE(b, FORWARD_SLOT))
{
    ForwardConstants forward_;
};

// csm
// point lights

SurfaceInterface surfaceFromMaterial(MaterialOutputInterface mat, float3 position) 
{
	SurfaceInterface surface;

	surface.base_color = mat.base_color;
	surface.metalness = mat.metalness;
	surface.gloss = mat.gloss;
	surface.albedo = SurfaceAlbedo(mat.base_color, mat.metalness);
	surface.f0 = SurfaceF0(mat.base_color, mat.metalness);
	surface.ao = mat.ao;
	surface.emissive = mat.emissive;
	surface.position = position;
	surface.positionView = mul(position, (float3x3) frame_.Environment.view_matrix);
	surface.N = mat.normal;
	surface.NView = mul(mat.normal, (float3x3) frame_.Environment.view_matrix);
	surface.V = normalize(get_camera_position() - position);
	surface.VView = mul(surface.V, (float3x3) frame_.Environment.view_matrix);
	surface.native_depth = 0;
	surface.depth = 0;
	surface.coverage = mat.coverage;
	surface.stencil = 0;

	return surface;
}

float4 shade_forward(SurfaceInterface surface, float3 position)
{
    float shadow = CalculateShadowFast(position);
    shadow = 1 - (1 - shadow) * (1 - frame_.Light.envShadowFadeout);

    float3 shaded = 0;
    shaded += surface.albedo * surface.emissive * frame_.Post.BloomEmissiveness;
    shaded += MainDirectionalLightEnv(surface, saturate(1 - frame_.Light.forwardPassAmbient)) * shadow;

    return float4(clamp(shaded, 0, 1000), 1);
}

void __pixel_shader(VertexStageOutput input, out float4 shadedNear : SV_Target0, out float4 shadedFar : SV_Target1)
{
	PixelInterface pixel;
	pixel.screen_position = input.position.xyz;
	pixel.custom = input.custom;
	init_ps_interface(pixel);
	pixel.position_ws = input.worldPosition;

#ifdef PASS_OBJECT_VALUES_THROUGH_STAGES
    pixel.key_color = input.key_color;
    pixel.custom_alpha = input.custom_alpha;
#endif

#ifdef USE_SIMPLE_INSTANCING_COLORING
    pixel.key_color = input.instance_key_color_dithering.xyz;
    pixel.custom_alpha = float2(pixel.custom_alpha.x, input.instance_key_color_dithering.w);
    pixel.color_mul = input.instance_color_mult_emissivity.xyz;
    pixel.emissive = input.instance_color_mult_emissivity.w;
#endif

	MaterialOutputInterface material_output = make_mat_interface();
    material_output.LOD = pixel.LOD;
    pixel_program(pixel, material_output);

    ApplyMultipliers(material_output);

	SurfaceInterface surface = surfaceFromMaterial(material_output, input.worldPosition);
    surface.depth = -linearize_depth(input.position.z, forward_.ProjectionMatrix);

    float4 lit = shade_forward(surface, input.worldPosition);
    
    // fade out nearby pixels
    float ambientFactor = saturate(surface.depth / frame_.Light.ForwardDimDistance);
    ambientFactor *= ambientFactor;
    ambientFactor *= ambientFactor;
    ambientFactor *= ambientFactor;
    ambientFactor *= ambientFactor;

    shadedFar = 0;
    shadedNear = lit * ambientFactor + float4(surface.albedo * frame_.Light.forwardPassAmbient, 0);
}
