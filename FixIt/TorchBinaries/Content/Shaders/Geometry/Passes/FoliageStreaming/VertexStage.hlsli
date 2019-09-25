#include <Foliage/Foliage.hlsli>

void __vertex_shader(__VertexInput input, out FoliageStreamVertex output)
{
    VertexShaderInterface vertex = __prepare_interface(input);

    MaterialVertexPayload custom;
    vertex_program(vertex, custom);

    output.position = vertex.position_scaled_untranslated.xyz;
    output.normal = vertex.normal_world;
    output.weight = vertex.material_weights[FoliageSetConstants.MaterialIndex];
}
