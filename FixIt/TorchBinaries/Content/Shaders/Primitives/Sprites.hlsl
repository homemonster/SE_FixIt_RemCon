// @define PREMULTIPLY_ALPHA

Texture2D	SpriteTexture	: register( t0 );

#include <Math/Color.hlsli>
#include <Common.hlsli>
#include <Frame.hlsli>
#include <GBuffer/GBufferWrite.hlsli>

struct TargetConstants {
	float2 targetOffset;
	float2 targetSize;
	float2 invResolution;
};

cbuffer Target : register (MERGE(b,PROJECTION_SLOT))
{
	TargetConstants Target;
};

struct VertexInput
{
	float4 scale_shift : TEXCOORD0; // scale is in screen coords
	float4 texcoord_offset_scale : TEXCOORD1;
	float4 origin_rotation : TEXCOORD2; // origin of rotation is in [-0.5x0.5] square
	float4 color : COLOR;
};

struct ProcessedVertex
{
	float4 position : SV_Position;
	float4 color : COLOR;
	float2 texcoord0 : TEXCOORD0;
};

void __vertex_shader(
	uint vertex_id : SV_VertexID, 
	uint instance_id : SV_InstanceID, 
	VertexInput input,
	out ProcessedVertex output) 
{
	float2 quad_pos = float2((vertex_id > 1), (~vertex_id & 1));
	
	float2 B = cross(float3(0,0,1), float3(input.origin_rotation.zw, 0)).xy;
	float2x2 rotation = float2x2(input.origin_rotation.zw, B);

	float2 quad_pos_in_ss = quad_pos * input.scale_shift.xy;
	quad_pos_in_ss += input.scale_shift.zw;
	quad_pos_in_ss = mul(quad_pos_in_ss - input.origin_rotation.xy, rotation) + input.origin_rotation.xy ;

	float2 quad_pos_in_clipSpace = quad_pos_in_ss * Target.invResolution * Target.targetSize + Target.targetOffset;
	quad_pos_in_clipSpace.y *= -1;
	
	output.position.xy = quad_pos_in_clipSpace;
	output.position.zw = float2(0, 1);

	output.texcoord0 = quad_pos * input.texcoord_offset_scale.zw + input.texcoord_offset_scale.xy;
    output.color = srgba_to_rgba(input.color);
    output.color.rgb *= output.color.a;
}


void __pixel_shader(ProcessedVertex input, out float4 output : SV_Target0) 
{
	float4 sample = SpriteTexture.Sample(LinearSampler, input.texcoord0);
#ifdef PREMULTIPLY_ALPHA
     sample.rgb *= sample.a;
#endif
	output = sample * input.color;
}
