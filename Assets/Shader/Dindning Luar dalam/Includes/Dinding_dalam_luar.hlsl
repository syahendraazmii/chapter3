#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void Dinding_dalam_luar_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 name, Texture2D image_36174, Texture2D image_36176, Texture2D image_37822, Texture2D image_36178, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_36174 = node_image_texture(image_36174, name, 0);
	float4 _HueSaturationValue_36162 = hue_sat(0, 0, 0, 1, _ImageTexture_36174);
	float4 _ImageTexture_36176 = node_image_texture(image_36176, name, 0);
	float4 _NormalMap_36166; node_normal_map(_ImageTexture_36176, -1.7, _NormalMap_36166);
	float4 _ImageTexture_36178 = node_image_texture(image_36178, name, 0);
	float4 _ImageTexture_37822 = node_image_texture(image_37822, name, 0);

	Color = _HueSaturationValue_36162;
	Normal = _NormalMap_36166;
	Smoothness = 0.0;
	Emission = _ImageTexture_36178;
	AmbientOcculusion = 0.0;
	Metallic = 0.0;
	Specular = _ImageTexture_37822;
}