// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33488,y:32717,varname:node_1873,prsc:2|emission-971-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:32551,y:32729,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,tex:d005da5f09c4046d98a95063dbc51b30,ntxv:0,isnm:False|UVIN-9829-OUT;n:type:ShaderForge.SFN_Multiply,id:1086,x:32812,y:32818,cmnt:RGB,varname:node_1086,prsc:2|A-4805-RGB,B-5983-RGB,C-5376-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32551,y:32915,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32551,y:33079,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:33025,y:32818,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32812,y:32992,cmnt:A,varname:node_603,prsc:2|A-4805-A,B-5983-A,C-5376-A;n:type:ShaderForge.SFN_TexCoord,id:7456,x:30029,y:32660,varname:node_7456,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:3111,x:30221,y:32660,varname:node_3111,prsc:2,spu:0.05,spv:0.02|UVIN-7456-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6059,x:30402,y:32660,ptovrint:False,ptlb:WaveTex,ptin:_WaveTex,varname:node_6059,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6e6cba53deb4f4e41a81667b73a1ca42,ntxv:0,isnm:False|UVIN-3111-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:8164,x:30588,y:32660,varname:node_8164,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6059-RGB;n:type:ShaderForge.SFN_Vector3,id:4967,x:31520,y:32219,varname:node_4967,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:3260,x:31363,y:32336,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_3260,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:1240,x:31747,y:32219,varname:node_1240,prsc:2|A-4967-OUT,B-3378-OUT,T-3260-OUT;n:type:ShaderForge.SFN_Normalize,id:96,x:31976,y:32219,varname:node_96,prsc:2|IN-1240-OUT;n:type:ShaderForge.SFN_Slider,id:4675,x:30894,y:33030,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_4675,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1364706,max:1;n:type:ShaderForge.SFN_Vector1,id:1152,x:31051,y:33114,varname:node_1152,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:9884,x:31224,y:33030,varname:node_9884,prsc:2|A-4675-OUT,B-1152-OUT;n:type:ShaderForge.SFN_Multiply,id:6612,x:31744,y:32710,varname:node_6612,prsc:2|A-3378-OUT,B-9884-OUT;n:type:ShaderForge.SFN_Add,id:9829,x:32091,y:32841,varname:node_9829,prsc:2|A-7779-OUT,B-7456-UVOUT;n:type:ShaderForge.SFN_Vector3,id:2565,x:31976,y:32081,varname:node_2565,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:5365,x:32878,y:32190,varname:node_5365,prsc:2|A-9719-RGB,B-5557-OUT,C-4465-OUT;n:type:ShaderForge.SFN_Color,id:9719,x:32641,y:31939,ptovrint:False,ptlb:ReflectionColor,ptin:_ReflectionColor,varname:node_9719,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:971,x:33266,y:32657,varname:node_971,prsc:2|A-1749-OUT,B-5365-OUT,C-9516-OUT;n:type:ShaderForge.SFN_Dot,id:8994,x:32217,y:32145,varname:node_8994,prsc:2,dt:0|A-2565-OUT,B-96-OUT;n:type:ShaderForge.SFN_Slider,id:4465,x:32423,y:32309,ptovrint:False,ptlb:ReflectionPower,ptin:_ReflectionPower,varname:node_4465,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7712945,max:1;n:type:ShaderForge.SFN_Step,id:5557,x:32530,y:32085,varname:node_5557,prsc:2|A-8036-OUT,B-8994-OUT;n:type:ShaderForge.SFN_Slider,id:8036,x:32139,y:31954,ptovrint:False,ptlb:ReflectionRange,ptin:_ReflectionRange,varname:node_8036,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9948192,max:1;n:type:ShaderForge.SFN_TexCoord,id:7683,x:30029,y:32469,varname:node_7683,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:595,x:30221,y:32469,varname:node_595,prsc:2,spu:0.01,spv:0.01|UVIN-7683-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4022,x:30402,y:32469,ptovrint:False,ptlb:WaveNoise,ptin:_WaveNoise,varname:node_4022,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:82324340e56b74a18a436642ac78d477,ntxv:0,isnm:False|UVIN-595-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:802,x:30573,y:32469,varname:node_802,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.5|IN-4022-R;n:type:ShaderForge.SFN_Add,id:6214,x:30984,y:32513,varname:node_6214,prsc:2|A-802-OUT,B-7066-OUT;n:type:ShaderForge.SFN_Append,id:3378,x:31398,y:32524,varname:node_3378,prsc:2|A-3614-OUT,B-4472-OUT;n:type:ShaderForge.SFN_Vector1,id:4472,x:31224,y:32685,varname:node_4472,prsc:2,v1:3;n:type:ShaderForge.SFN_Slider,id:4028,x:30450,y:32876,ptovrint:False,ptlb:WavePower,ptin:_WavePower,varname:node_4028,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5834168,max:5;n:type:ShaderForge.SFN_OneMinus,id:3614,x:31160,y:32513,varname:node_3614,prsc:2|IN-6214-OUT;n:type:ShaderForge.SFN_Multiply,id:7066,x:30800,y:32660,varname:node_7066,prsc:2|A-8164-OUT,B-4028-OUT;n:type:ShaderForge.SFN_Multiply,id:7779,x:31882,y:32592,varname:node_7779,prsc:2|A-3378-OUT,B-9884-OUT;n:type:ShaderForge.SFN_Tex2d,id:8606,x:34397,y:31779,ptovrint:False,ptlb:ShimmerTex,ptin:_ShimmerTex,varname:node_8606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f5586d6dde35a4a349d7f311c01f055a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:1562,x:33663,y:31943,varname:node_1562,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9654,x:33835,y:31943,varname:node_9654,prsc:2,spu:0,spv:-0.1|UVIN-1562-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2175,x:34187,y:31943,ptovrint:False,ptlb:ShimmerNoise,ptin:_ShimmerNoise,varname:node_2175,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0822be61d4823444e959e7b335727c7c,ntxv:0,isnm:False|UVIN-6168-OUT;n:type:ShaderForge.SFN_Multiply,id:5556,x:34397,y:31960,varname:node_5556,prsc:2|A-2175-R,B-3720-OUT;n:type:ShaderForge.SFN_Slider,id:3720,x:34030,y:32120,ptovrint:False,ptlb:ShimmerNoisePower,ptin:_ShimmerNoisePower,varname:node_3720,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2634841,max:1;n:type:ShaderForge.SFN_Multiply,id:9516,x:34635,y:31937,varname:node_9516,prsc:2|A-3239-RGB,B-8606-A,C-5556-OUT;n:type:ShaderForge.SFN_Multiply,id:6168,x:34011,y:31943,varname:node_6168,prsc:2|A-9654-UVOUT,B-6062-OUT;n:type:ShaderForge.SFN_Color,id:3239,x:34397,y:31610,ptovrint:False,ptlb:ShimmerColor,ptin:_ShimmerColor,varname:node_3239,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:6062,x:33835,y:32088,varname:node_6062,prsc:2,v1:0.5;proporder:4805-5983-6059-3260-4675-9719-4465-8036-4022-4028-8606-2175-3720-3239;pass:END;sub:END;*/

Shader "Shader Forge/OceanReflection" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _WaveTex ("WaveTex", 2D) = "white" {}
        _Reflection ("Reflection", Range(0, 1)) = 1
        _Distortion ("Distortion", Range(0, 1)) = 0.1364706
        _ReflectionColor ("ReflectionColor", Color) = (1,1,1,1)
        _ReflectionPower ("ReflectionPower", Range(0, 1)) = 0.7712945
        _ReflectionRange ("ReflectionRange", Range(0, 1)) = 0.9948192
        _WaveNoise ("WaveNoise", 2D) = "white" {}
        _WavePower ("WavePower", Range(0, 5)) = 0.5834168
        _ShimmerTex ("ShimmerTex", 2D) = "white" {}
        _ShimmerNoise ("ShimmerNoise", 2D) = "white" {}
        _ShimmerNoisePower ("ShimmerNoisePower", Range(0, 1)) = 0.2634841
        _ShimmerColor ("ShimmerColor", Color) = (1,1,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _WaveTex; uniform float4 _WaveTex_ST;
            uniform float _Reflection;
            uniform float _Distortion;
            uniform float4 _ReflectionColor;
            uniform float _ReflectionPower;
            uniform float _ReflectionRange;
            uniform sampler2D _WaveNoise; uniform float4 _WaveNoise_ST;
            uniform float _WavePower;
            uniform sampler2D _ShimmerTex; uniform float4 _ShimmerTex_ST;
            uniform sampler2D _ShimmerNoise; uniform float4 _ShimmerNoise_ST;
            uniform float _ShimmerNoisePower;
            uniform float4 _ShimmerColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_6205 = _Time + _TimeEditor;
                float2 node_595 = (i.uv0+node_6205.g*float2(0.01,0.01));
                float4 _WaveNoise_var = tex2D(_WaveNoise,TRANSFORM_TEX(node_595, _WaveNoise));
                float2 node_3111 = (i.uv0+node_6205.g*float2(0.05,0.02));
                float4 _WaveTex_var = tex2D(_WaveTex,TRANSFORM_TEX(node_3111, _WaveTex));
                float3 node_3378 = float3((1.0 - ((_WaveNoise_var.r*0.5+0.0)+(_WaveTex_var.rgb.rg*_WavePower))),3.0);
                float node_9884 = (_Distortion*0.2);
                float3 node_9829 = ((node_3378*node_9884)+float3(i.uv0,0.0));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9829, _MainTex));
                float node_603 = (_MainTex_var.a*_Color.a*i.vertexColor.a); // A
                float4 _ShimmerTex_var = tex2D(_ShimmerTex,TRANSFORM_TEX(i.uv0, _ShimmerTex));
                float2 node_6168 = ((i.uv0+node_6205.g*float2(0,-0.1))*0.5);
                float4 _ShimmerNoise_var = tex2D(_ShimmerNoise,TRANSFORM_TEX(node_6168, _ShimmerNoise));
                float3 emissive = (((_MainTex_var.rgb*_Color.rgb*i.vertexColor.rgb)*node_603)+(_ReflectionColor.rgb*step(_ReflectionRange,dot(float3(0,0,1),normalize(lerp(float3(0,0,1),node_3378,_Reflection))))*_ReflectionPower)+(_ShimmerColor.rgb*_ShimmerTex_var.a*(_ShimmerNoise_var.r*_ShimmerNoisePower)));
                float3 finalColor = emissive;
                return fixed4(finalColor,node_603);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
