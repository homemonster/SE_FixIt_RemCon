#include "EnvPrefiltering.hlsli"
#include <Postprocess/PostprocessBase.hlsli>

#define SamplesCount 16

void __pixel_shader(PostprocessVertex vertex, 
    out float4 output : SV_Target0)
{
	uint2 texel = vertex.position.xy;
	float a = remap_gloss(Gloss_Blend);

    float2 frontPlane;
	// frontPlane = 2 * (texel + 0.5) / (float) MipResolution - 1;
	// for smooth filtering strech for whole plane (no snapping to texel location)
	frontPlane = 2 * (texel) / (float) (MipResolution - 1) - 1;
	float3 N = normalize(float3(frontPlane, 1));

	if(MipResolution == 1) 
    {
		N = float3(0, 0, 1);
	}

	N.y *= -1;
	N = mul(N, cubemap_face_onb(FaceId));

	float3 V = N;

	float4 acc = 0;
    [unroll]
	for(uint i=0; i< SamplesCount; ++i) 
    {
		float2 xi = hammersley2d(i, SamplesCount);
		float pdf;
		float3 H = importance_sample_ggx(xi, a, N, pdf);

		float3 L = 2 * dot( V, H ) * H - V;
	    float NL = saturate(dot( N, L ));
	    float VL = saturate(dot( V, L ));
	    float NH = saturate(dot( N, H ));
	    float VH = saturate(dot( V, H ));

	    if( NL > 0 )
	    {
	    	float texelSolidAngle = 4 * M_PI / (6 * EnvProbeRes * EnvProbeRes);
	    	float sampleSolidAngle = 1 / ( pdf * SamplesCount );
	    	float lod = Gloss_Blend == 1 ? 0 : 0.5 * log2((float)(sampleSolidAngle/texelSolidAngle));
	    	float3 sample = (float3)ProbeTex.SampleLevel(LinearSampler, L, lod);
	    	acc.xyz += sample * NL;
			acc.w += NL;
	    }
	}

	acc.xyz /= acc.w;
	
    output = acc;
}
