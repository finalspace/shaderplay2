// Spine/Skeleton Partial Tint
// - Refraction option
// - Gap width option
// - unlit
// - Premultiplied alpha blending
// - No depth, no backface culling, no fog.

Shader "Spine/Skeleton Part Tint" {
	Properties {
		_Color ("Tint Color", Color) = (1,1,1,1)
		_Black ("Black Point", Color) = (0,0,0,0)
        _HeightY("HeightY", Range(-20, 50)) = 0.0
        _Gap("Gap", Range(0, 20)) = 0.0
        _NoiseTex ("NoiseTex", 2D) = "white" {}
        _Distortion ("Distortion", Range(0, 1)) = 0.4358473
        _GapColor("GapColor", Color) = (1,1,1,1)
        _DistortionColor("DistortionColor", Color) = (1,1,1,1)
        //_DistortionDepth("DistortionDepth", Color) = (1,1,1,1)
		[NoScaleOffset] _MainTex ("MainTex", 2D) = "black" {}
		_Cutoff ("Shadow alpha cutoff", Range(0,1)) = 0.1
	}

	SubShader {
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }

		Fog { Mode Off }
		Cull Off
		ZWrite Off
		Blend One OneMinusSrcAlpha
		Lighting Off

		Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			sampler2D _MainTex;
            uniform float4 _MainTex_ST;
            sampler2D _NoiseTex;
            uniform float4 _NoiseTex_ST; 
			float4 _Color;
			float4 _Black;
            float4 _GapColor;
            float4 _DistortionColor;
            //float4 _DistortionDepth;
            float _HeightY;
            float _Gap;
            uniform float4 _TimeEditor;
            uniform float _Distortion;

			struct VertexInput {
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float4 vertexColor : COLOR;
			};

			struct VertexOutput {
				float4 pos : SV_POSITION;
				float2 uv : TEXCOORD0;
				float4 vertexColor : COLOR;            
                float3 localPos : TEXCOORD2;
			};

			VertexOutput vert (VertexInput v) {
				VertexOutput o;
				o.pos = UnityObjectToClipPos(v.vertex); // replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'
				o.uv = v.uv;
				o.vertexColor = v.vertexColor * float4(_Color.rgb * _Color.a, _Color.a); // Combine a PMA version of _Color with vertexColor.
                o.localPos = v.vertex.xyz;
				return o;
			}

			float4 frag (VertexOutput i) : COLOR {
				float4 texColor = tex2D(_MainTex, i.uv);
                float4 outColor = texColor;

                float noise = +sin((i.localPos.x * 10) * 0.5 + _Time[3]) / 20 + cos((-i.localPos.x * 20) * 0.5 + _Time[3] * 0.2) / 50;

                if (i.localPos.y < _HeightY + _Gap + noise)
                {
                    float4 node_6780 = _Time + _TimeEditor;
                    float2 node_3111 = (i.uv+node_6780.g*float2(0.05,0.05));
                    float4 _node_6059_var = tex2D(_NoiseTex, TRANSFORM_TEX(node_3111, _NoiseTex));
                    float2 node_8164 = _node_6059_var.rgb.rg;
                    float2 node_9829 = ((node_8164*(_Distortion*0.02))+i.uv);
                    texColor = tex2D(_MainTex,TRANSFORM_TEX(node_9829, _MainTex));

                    float v2 = (i.localPos.y - _HeightY - noise * 0.5) / _Gap;
                    //texColor = lerp(texColor * _DistortionColor, texColor + _GapColor * texColor.a, v2);
                    texColor = lerp(texColor * _DistortionColor, texColor * _GapColor, v2);
                }
                outColor = (texColor * i.vertexColor) + float4(((1-texColor.rgb) * _Black.rgb * texColor.a*_Color.a*i.vertexColor.a), 0);
				return outColor;
			}
			ENDCG
		}

		Pass {
			Name "Caster"
			Tags { "LightMode"="ShadowCaster" }
			Offset 1, 1
			ZWrite On
			ZTest LEqual

			Fog { Mode Off }
			Cull Off
			Lighting Off

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#pragma fragmentoption ARB_precision_hint_fastest
			#include "UnityCG.cginc"
			sampler2D _MainTex;
			fixed _Cutoff;

			struct VertexOutput { 
				V2F_SHADOW_CASTER;
				float2 uv : TEXCOORD1;
			};

			VertexOutput vert (appdata_base v) {
				VertexOutput o;
				o.uv = v.texcoord;
				TRANSFER_SHADOW_CASTER(o)
				return o;
			}

			float4 frag (VertexOutput i) : COLOR {
				fixed4 texcol = tex2D(_MainTex, i.uv);
				clip(texcol.a - _Cutoff);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
	}
}
