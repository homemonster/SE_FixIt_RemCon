struct MaterialConstants
{
	// NOTE: If material constant is empty, NO constant buffer for material will be binded in the render pass
	#define MATERIAL_CONSTANTS_IS_EMPTY 
};

struct MaterialVertexPayload
{
	float3 color : COLOR;
	float3 normal : NORMAL;
};