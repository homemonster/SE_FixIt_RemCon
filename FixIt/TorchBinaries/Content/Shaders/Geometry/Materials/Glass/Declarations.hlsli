struct MaterialConstants
{
	// NOTE: If material constant is empty, NO constant buffer for material will be binded in the render pass
	#define MATERIAL_CONSTANTS_IS_EMPTY 
};

struct MaterialVertexPayload
{
#ifndef DEPTH_ONLY	
	float2 texcoord0 	 : TEXCOORD0;
	float3 normal		 : NORMAL;
    float3 positionw     : POSITION1;
#endif
};
