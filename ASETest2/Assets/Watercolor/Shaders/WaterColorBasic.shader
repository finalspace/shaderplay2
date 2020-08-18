Shader "WaterColor/Water"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _DiffuseColor("Diffuse Color", Color) = (1, 1, 1, 1)
        _Outline("Outline", Range(0,1)) = 0.1
        _OutlineColor("Outline Color", Color) = (0, 0, 0, 1)
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass {
               NAME "OUTLINE"

            Cull Front

            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_fog
            #include "UnityCG.cginc"

            float _Outline;
            fixed4 _OutlineColor;

            struct a2v {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };

            struct v2f {
                float4 pos : SV_POSITION;
                float3 worldPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };

                v2f vert(a2v v) {
                    v2f o;
                    float4 pos = mul(UNITY_MATRIX_MV, v.vertex);
                    float3 normal = mul((float3x3)UNITY_MATRIX_IT_MV, v.normal);
                    pos = pos + float4(normalize(normal), 0) * _Outline;
                    o.pos = mul(UNITY_MATRIX_P, pos);
                    o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
                    UNITY_TRANSFER_FOG(o, o.pos);
                    return o;
                }

                float4 frag(v2f i) : SV_Target {
                    float3 ColorTemp = _OutlineColor.rgb;
                    UNITY_APPLY_FOG(i.fogCoord, ColorTemp);
                    return float4(ColorTemp, 1);
                }

                ENDCG
            }

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_fog
            #include "UnityCG.cginc"

           fixed4 _DiffuseColor;

           struct a2v {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 texcoord : TEXCOORD0;
            };

            struct v2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
                UNITY_FOG_COORDS(5)
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;

            v2f vert (a2v v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);

                UNITY_TRANSFER_FOG(o, o.pos);
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float2 uv = i.uv;
                fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT;
                fixed3 texColor = lerp(tex2D(_MainTex, uv).rgb,ambient, 0);
                texColor = lerp(texColor, 1,1 - tex2D(_MainTex, uv).a);
                fixed3 diffuse = _DiffuseColor.rgb * smoothstep(0.35, 0.4, texColor)*texColor;
                UNITY_APPLY_FOG(i.fogCoord, diffuse);
                return fixed4(diffuse,1);
            }
            ENDCG
        }
    }
}