#include "Declarations.hlsli"

#define OIT
#include <Transparent/OIT/Globals.hlsli>

void __pixel_shader(VertexStageOutput vertex, out float4 accumTarget : SV_TARGET0, out float4 coverageTarget : SV_TARGET1)
{
    PixelInterface pixel;
    pixel.screen_position = vertex.position.xyz;
    pixel.custom = vertex.custom;
    init_ps_interface(pixel);

#ifdef PASS_OBJECT_VALUES_THROUGH_STAGES
    pixel.key_color = vertex.key_color;
    pixel.custom_alpha = vertex.custom_alpha;
#endif

#ifdef USE_SIMPLE_INSTANCING_COLORING
    pixel.key_color = vertex.instance_key_color_dithering.xyz;
    pixel.custom_alpha = float2(pixel.custom_alpha.x, vertex.instance_key_color_dithering.w);
#endif

	MaterialOutputInterface material_output = make_mat_interface();
    pixel_program(pixel, material_output);

    float4 resultColor = float4(material_output.base_color, material_output.transparency);
    TransparentColorOutput(resultColor, material_output.depth, vertex.position.z, 1.0f, accumTarget, coverageTarget);
}
