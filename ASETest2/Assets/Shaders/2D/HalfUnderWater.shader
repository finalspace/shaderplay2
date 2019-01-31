Shader "Custom/HalfUnderWater" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("MainTexture", 2D) = "white" {}
        _AlternativeTex ("AlternativeTexture", 2D) = "white" {}
        //_MainTex ("Color (RGB) Alpha (A)", 2D) = "white" {}
        _EmissionColor ("EmissionColor", Color) = (1,1,1,1)
        _EmissionTex ("Albedo (RGB)", 2D) = "black" {}
        _Glossiness ("Smoothness", Range(0,1)) = 0.5
        _Metallic ("Metallic", Range(0,1)) = 0.0
        _ConstructY("ConstructY", Range(-20,20)) = 0.0
        _ConstructGap("ConstructGap", Range(0, 100)) = 0.0
        _ConstructColor ("ConstructColor", Color) = (1,1,1,1)
        _DarkColorAmp("DarkColorAmplifier", Range(0, 10)) = 0.2
        _DarkEmiAmp("DarkEmiAmplifier", Range(0, 10)) = 1
        _LightColorAmp("LightColorAmplifier", Range(0, 10)) = 1.5
        _LightEmiAmp("LightEmiAmplifier", Range(0, 10)) = 5.0
    }
    SubShader {
        //Tags { "RenderType"="Transparent" }
        Tags { "Queue"="Transparent" "RenderType"="Transparent" }
        LOD 200
        //Cull Off
        
        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Standard fullforwardshadows vertex:vert alpha

        // Use shader model 3.0 target, to get nicer looking lighting
        #pragma target 3.0

        sampler2D _MainTex;
        sampler2D _AlternativeTex;
        sampler2D _EmissionTex;

        struct Input {
            float2 uv_MainTex;
            float2 uv_AlternativeTex;
            float2 uv_EmissionTex;
            float3 localPos;
            float3 worldPos;
            float3 viewDir;
        };

        half _Glossiness;
        half _Metallic;
        fixed4 _Color;
        fixed4 _EmissionColor;
        float _ConstructY;
        float _ConstructGap;
        fixed4 _ConstructColor;
        float _DarkColorAmp;
        float _DarkEmiAmp;
        float _LightColorAmp;
        float _LightEmiAmp;
        int building;
        float3 viewDir;

        void vert (inout appdata_full v, out Input o) 
        {
            UNITY_INITIALIZE_OUTPUT(Input,o);
            o.localPos = v.vertex.xyz;
        }

        inline half4 LightingCustom(SurfaceOutputStandard s, half3 lightDir, UnityGI gi)
        {
            if (building)
                return _ConstructColor; // Unity5 PBR

            if (dot(s.Normal, viewDir) > 0)
                return _ConstructColor;

            return LightingStandard(s, lightDir, gi);
            //return _ConstructColor; // Unlit
        }

        inline void LightingCustom_GI(SurfaceOutputStandard s, UnityGIInput data, inout UnityGI gi)
        {
            LightingStandard_GI(s, data, gi);       
        }

        void surf (Input IN, inout SurfaceOutputStandard o) {
            // Albedo comes from a texture tinted by color
            //fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
            //o.Albedo = c.rgb;
            // Metallic and smoothness come from slider variables
            //o.Metallic = _Metallic;
            //o.Smoothness = _Glossiness;
            //o.Alpha = c.a;

            viewDir = IN.viewDir;

            float noise = 0;
            if (_ConstructY < 1.45)
            {
                noise = +sin((IN.localPos.x * IN.localPos.z) * 20 + _Time[3] + o.Normal) / 20;
            }
            else
            {
                noise = 0;
            }
            //float noise = +sin((IN.localPos.x * IN.localPos.z) * 20 + _Time[3] + o.Normal) / 20;

            //if (IN.localPos.y > _ConstructY + _ConstructGap + noise)
            //    discard;


            if (IN.localPos.y > _ConstructY + _ConstructGap + noise)
            {
                fixed4 c = tex2D(_AlternativeTex, IN.uv_AlternativeTex) * _Color;
                o.Albedo = c.rgb * _DarkColorAmp;
                o.Alpha  = c.a;

                fixed4 cm = tex2D(_EmissionTex, IN.uv_EmissionTex) * _EmissionColor;
                o.Emission = cm * _DarkEmiAmp;
                building = 1;
            }

            else if (IN.localPos.y < _ConstructY + noise)
            {
                fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
                o.Albedo = c.rgb * _LightColorAmp;
                o.Alpha  = c.a;

                fixed4 cm = tex2D(_EmissionTex, IN.uv_EmissionTex) * _EmissionColor;
                o.Emission = cm * _LightEmiAmp;

                building = 0;
            }
            else
            {
                o.Albedo = _ConstructColor.rgb * 5;
                o.Alpha  = _ConstructColor.a;

                //fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
                //o.Albedo = c.rgb / 5;
                //o.Alpha  = c.a;

                //fixed4 cm = tex2D(_EmissionTex, IN.uv_EmissionTex) * _EmissionColor;
                //o.Emission = cm;

                building = 1;
            }
            //o.Metallic = _Metallic;
            //o.Smoothness = _Glossiness;
        }
        ENDCG
    }
    FallBack "Diffuse"
}