#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void Dinding_dalam_luar_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 name, Texture2D image_13396, Texture2D image_13402, Texture2D image_13404, Texture2D image_13406, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_13396 = node_image_texture(image_13396, name, 0);
	float4 _HueSaturationValue_13392 = hue_sat(0, 0.9000001, 0, 1, _ImageTexture_13396);
	float4 _ImageTexture_13402 = node_image_texture(image_13402, name, 0);
	float4 _NormalMap_13394; node_normal_map(_ImageTexture_13402, 3, _NormalMap_13394);
	float4 _ImageTexture_13406 = node_image_texture(image_13406, name, 0);
	float4 _ImageTexture_13404 = node_image_texture(image_13404, name, 0);

	Color = _HueSaturationValue_13392;
	Normal = _NormalMap_13394;
	Smoothness = _ImageTexture_13406;
	Emission = float4(0.0, 0.0, 0.0, 0.0);
	AmbientOcculusion = 0.0;
	Metallic = 0.0;
	Specular = _ImageTexture_13404;
}