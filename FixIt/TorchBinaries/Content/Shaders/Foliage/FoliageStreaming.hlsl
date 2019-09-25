
#include <Foliage/Foliage.hlsli>
#include <Random.hlsli>

FoliageStreamGeometryOutputVertex SpawnPoint(FoliageStreamVertex vertices[3], float r1, float r2, uint r)
{
    float a = 1-sqrt(r1);
    float b = (1-r2)*sqrt(r1);
    float c = r2*sqrt(r1);

    float3 position = a * vertices[0].position + b * vertices[1].position + c * vertices[2].position;

    uint2 packedNormal = PackNormal(normalize(vertices[0].normal + vertices[1].normal + vertices[2].normal));
    
    FoliageStreamGeometryOutputVertex resultVertex;
    resultVertex.position = position;
    resultVertex.NormalSeedMaterialId = packedNormal.x | (packedNormal.y << 8) | ((r % 0x100) << 16) | ((FoliageSetConstants.MaterialId % 0x100) << 24);
    return resultVertex;
}

float triangle_area(float3 v0, float3 v1, float3 v2)
{
	return length(cross(v1 - v0, v2 - v0)) * 0.5f;
}

[maxvertexcount(MAX_FOLIAGE_PER_TRIANGLE)]
void __geometry_shader(triangle FoliageStreamVertex input[3], uint primitiveID : SV_PrimitiveID,
    inout PointStream<FoliageStreamGeometryOutputVertex> point_stream)
{
	RandomGenerator random;
	uint3 preSeed = uint3(input[0].position * 10 + 0.5f) ^ (uint3(input[1].position * 10 + 0.5f) * 10) ^ (uint3(input[2].position * 10 + 0.5f) * 1000);
    uint seed = preSeed.x ^ preSeed.y ^ preSeed.z ^ FoliageSetConstants.MaterialId;
	random.SetSeed(0x12345678^seed);
	
    float triangleArea = triangle_area(input[0].position, input[1].position, input[2].position);

	float weight0 = input[0].weight;
    float weight1 = input[1].weight;
    float weight2 = input[2].weight;
	float averageWeight = (weight0 + weight1 + weight2) / 3.0f;

    float spawnNum = triangleArea * FoliageSetConstants.Density * averageWeight;
    float spawnFraction = frac(spawnNum);

	int spawnCount = spawnNum;
    spawnCount += random.GetFloat() < spawnFraction;
    spawnCount = min(spawnCount, MAX_FOLIAGE_PER_TRIANGLE);
    for ( int pointIndex = 0; pointIndex < spawnCount; ++pointIndex )
	{
        point_stream.Append(SpawnPoint(input, random.GetFloatRange(0, 1), random.GetFloatRange(0, 1), random.GetInt()));
	}

	// needed?
	point_stream.RestartStrip();
}

