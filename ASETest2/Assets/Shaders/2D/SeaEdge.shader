// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-1749-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:31905,y:33304,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,tex:19a732dca8f5d49dea8e83f72cc9c80c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1086,x:32295,y:33091,cmnt:RGB,varname:node_1086,prsc:2|A-1524-RGB,B-5983-RGB,C-8631-OUT;n:type:ShaderForge.SFN_Color,id:5983,x:31905,y:33495,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:31905,y:33670,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:32890,y:33105,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32677,y:33279,cmnt:A,varname:node_603,prsc:2|A-4805-A,B-5983-A,C-5376-A,D-1524-A,E-7801-OUT;n:type:ShaderForge.SFN_Vector1,id:8436,x:30477,y:31813,varname:node_8436,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:2145,x:30477,y:31900,varname:node_2145,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2912,x:30664,y:31848,varname:node_2912,prsc:2|A-8436-OUT,B-2145-T;n:type:ShaderForge.SFN_Vector1,id:1793,x:30634,y:31726,varname:node_1793,prsc:2,v1:4;n:type:ShaderForge.SFN_Subtract,id:6208,x:30866,y:31799,varname:node_6208,prsc:2|A-1793-OUT,B-2912-OUT;n:type:ShaderForge.SFN_Sin,id:815,x:31029,y:31799,varname:node_815,prsc:2|IN-6208-OUT;n:type:ShaderForge.SFN_RemapRange,id:7632,x:31219,y:31799,varname:node_7632,prsc:2,frmn:-1,frmx:1,tomn:-0.1,tomx:0.05|IN-815-OUT;n:type:ShaderForge.SFN_TexCoord,id:8046,x:31219,y:31636,varname:node_8046,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:8210,x:31465,y:31760,varname:node_8210,prsc:2,spu:0,spv:1|UVIN-8046-UVOUT,DIST-7632-OUT;n:type:ShaderForge.SFN_Tex2d,id:9846,x:31687,y:31760,varname:node_9846,prsc:2,tex:f97a0a5d2960642adbf798f4d687c679,ntxv:0,isnm:False|UVIN-8210-UVOUT,TEX-6028-TEX;n:type:ShaderForge.SFN_OneMinus,id:5243,x:31894,y:31760,varname:node_5243,prsc:2|IN-9846-B;n:type:ShaderForge.SFN_Vector1,id:9441,x:31894,y:31919,varname:node_9441,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:7416,x:32066,y:31760,varname:node_7416,prsc:2|A-5243-OUT,B-9441-OUT;n:type:ShaderForge.SFN_Clamp01,id:3696,x:32251,y:31760,varname:node_3696,prsc:2|IN-7416-OUT;n:type:ShaderForge.SFN_TexCoord,id:5047,x:28801,y:32725,varname:node_5047,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7917,x:29007,y:32725,varname:node_7917,prsc:2,spu:-0.1,spv:-0.12|UVIN-5047-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4907,x:29007,y:32878,varname:node_4907,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9892,x:29188,y:32725,varname:node_9892,prsc:2|A-7917-UVOUT,B-4907-OUT;n:type:ShaderForge.SFN_Tex2d,id:8526,x:29357,y:32726,ptovrint:False,ptlb:WaveTex,ptin:_WaveTex,varname:node_8526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6e6cba53deb4f4e41a81667b73a1ca42,ntxv:0,isnm:False|UVIN-9892-OUT;n:type:ShaderForge.SFN_RemapRange,id:6356,x:29534,y:32726,varname:node_6356,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.2|IN-8526-G;n:type:ShaderForge.SFN_Slider,id:6180,x:30295,y:32722,ptovrint:False,ptlb:NoiseMovement,ptin:_NoiseMovement,varname:node_6180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.07812602,max:1;n:type:ShaderForge.SFN_TexCoord,id:6315,x:29975,y:32558,varname:node_6315,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:6814,x:30156,y:32652,varname:node_6814,prsc:2|A-6315-UVOUT,B-8977-OUT;n:type:ShaderForge.SFN_Lerp,id:8482,x:30413,y:32569,varname:node_8482,prsc:2|A-6315-UVOUT,B-6814-OUT,T-6180-OUT;n:type:ShaderForge.SFN_Vector1,id:5935,x:28786,y:33194,varname:node_5935,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:9013,x:28786,y:33298,varname:node_9013,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8533,x:28961,y:33241,varname:node_8533,prsc:2|A-5935-OUT,B-9013-T;n:type:ShaderForge.SFN_Sin,id:536,x:29601,y:33226,varname:node_536,prsc:2|IN-6758-OUT;n:type:ShaderForge.SFN_RemapRange,id:6405,x:30135,y:33226,varname:node_6405,prsc:2,frmn:0,frmx:1,tomn:-0.1,tomx:0.05|IN-6722-OUT;n:type:ShaderForge.SFN_Panner,id:8441,x:30801,y:32730,varname:node_8441,prsc:2,spu:0,spv:1|UVIN-8482-OUT,DIST-6405-OUT;n:type:ShaderForge.SFN_OneMinus,id:6018,x:31573,y:32391,varname:node_6018,prsc:2|IN-1524-G;n:type:ShaderForge.SFN_Tex2d,id:9969,x:31573,y:32221,ptovrint:False,ptlb:node_9969,ptin:_node_9969,varname:node_9969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6337f74ea4d0447fcabf466fbeb336d8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8579,x:31840,y:32295,varname:node_8579,prsc:2|A-9969-RGB,B-6018-OUT;n:type:ShaderForge.SFN_Multiply,id:9144,x:32159,y:32240,varname:node_9144,prsc:2|A-3696-OUT,B-8579-OUT;n:type:ShaderForge.SFN_Add,id:9830,x:32228,y:32754,varname:node_9830,prsc:2|A-9144-OUT,B-1524-RGB;n:type:ShaderForge.SFN_Tex2d,id:1524,x:31233,y:32731,varname:node_1524,prsc:2,tex:f97a0a5d2960642adbf798f4d687c679,ntxv:0,isnm:False|UVIN-8441-UVOUT,TEX-6028-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6028,x:30587,y:32251,ptovrint:False,ptlb:node_6028,ptin:_node_6028,varname:node_6028,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f97a0a5d2960642adbf798f4d687c679,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:8631,x:32267,y:32944,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_8631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4844355,max:5;n:type:ShaderForge.SFN_Slider,id:1804,x:29003,y:33393,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_1804,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Add,id:6758,x:29160,y:33241,varname:node_6758,prsc:2|A-8533-OUT,B-1804-OUT;n:type:ShaderForge.SFN_TexCoord,id:9563,x:28828,y:32495,varname:node_9563,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:676,x:29007,y:32495,varname:node_676,prsc:2,spu:0.1,spv:0.1|UVIN-9563-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:3744,x:29357,y:32496,ptovrint:False,ptlb:WaveNoise,ptin:_WaveNoise,varname:node_3744,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:99496d4d2b28c424f86cf029cc40a6d1,ntxv:0,isnm:False|UVIN-839-OUT;n:type:ShaderForge.SFN_RemapRange,id:6850,x:29534,y:32496,varname:node_6850,prsc:2,frmn:0,frmx:1,tomn:-0.2,tomx:0.2|IN-3744-R;n:type:ShaderForge.SFN_Add,id:8977,x:29913,y:32700,varname:node_8977,prsc:2|A-9064-OUT,B-6356-OUT;n:type:ShaderForge.SFN_Multiply,id:839,x:29188,y:32495,varname:node_839,prsc:2|A-676-UVOUT,B-5608-OUT;n:type:ShaderForge.SFN_Vector1,id:5608,x:29007,y:32645,varname:node_5608,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:7801,x:30566,y:33429,varname:node_7801,prsc:2|A-5604-OUT,B-8962-OUT,GT-3824-OUT,EQ-3824-OUT,LT-6960-OUT;n:type:ShaderForge.SFN_Vector1,id:8962,x:30366,y:33450,varname:node_8962,prsc:2,v1:0;n:type:ShaderForge.SFN_RemapRange,id:3154,x:29771,y:33226,varname:node_3154,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-536-OUT;n:type:ShaderForge.SFN_Sin,id:5604,x:29536,y:33425,varname:node_5604,prsc:2|IN-4386-OUT;n:type:ShaderForge.SFN_Pi,id:709,x:28984,y:33493,varname:node_709,prsc:2;n:type:ShaderForge.SFN_Add,id:4386,x:29355,y:33425,varname:node_4386,prsc:2|A-6758-OUT,B-9851-OUT;n:type:ShaderForge.SFN_Multiply,id:9851,x:29138,y:33544,varname:node_9851,prsc:2|A-709-OUT,B-3554-OUT;n:type:ShaderForge.SFN_Power,id:6493,x:30011,y:33557,varname:node_6493,prsc:2|VAL-3154-OUT,EXP-4857-OUT;n:type:ShaderForge.SFN_Vector1,id:4857,x:30021,y:33716,varname:node_4857,prsc:2,v1:4;n:type:ShaderForge.SFN_RemapRange,id:3824,x:30218,y:33501,varname:node_3824,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-6493-OUT;n:type:ShaderForge.SFN_RemapRange,id:9368,x:30021,y:33811,varname:node_9368,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-3154-OUT;n:type:ShaderForge.SFN_Power,id:6960,x:30323,y:33815,varname:node_6960,prsc:2|VAL-9368-OUT,EXP-3777-OUT;n:type:ShaderForge.SFN_Vector1,id:3777,x:30323,y:33952,varname:node_3777,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:3554,x:28951,y:33619,varname:node_3554,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Slider,id:5392,x:29342,y:32401,ptovrint:False,ptlb:NoisePower,ptin:_NoisePower,varname:node_5392,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Multiply,id:9064,x:29699,y:32496,varname:node_9064,prsc:2|A-5392-OUT,B-6850-OUT;n:type:ShaderForge.SFN_Power,id:6722,x:29970,y:33226,varname:node_6722,prsc:2|VAL-3154-OUT,EXP-3499-OUT;n:type:ShaderForge.SFN_Vector1,id:3499,x:29970,y:33137,varname:node_3499,prsc:2,v1:1.5;proporder:4805-5983-8526-6180-9969-6028-8631-1804-3744-5392;pass:END;sub:END;*/

Shader "Shader Forge/SeaEdge" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _WaveTex ("WaveTex", 2D) = "white" {}
        _NoiseMovement ("NoiseMovement", Range(0, 1)) = 0.07812602
        _node_9969 ("node_9969", 2D) = "white" {}
        _node_6028 ("node_6028", 2D) = "white" {}
        _Brightness ("Brightness", Range(0, 5)) = 0.4844355
        _Offset ("Offset", Range(0, 10)) = 0
        _WaveNoise ("WaveNoise", 2D) = "white" {}
        _NoisePower ("NoisePower", Range(0, 5)) = 1
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
            uniform float _NoiseMovement;
            uniform sampler2D _node_6028; uniform float4 _node_6028_ST;
            uniform float _Brightness;
            uniform float _Offset;
            uniform sampler2D _WaveNoise; uniform float4 _WaveNoise_ST;
            uniform float _NoisePower;
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
                float4 node_9013 = _Time + _TimeEditor;
                float node_6758 = ((1.0*node_9013.g)+_Offset);
                float node_3154 = (sin(node_6758)*0.5+0.5);
                float4 node_3091 = _Time + _TimeEditor;
                float2 node_839 = ((i.uv0+node_3091.g*float2(0.1,0.1))*1.0);
                float4 _WaveNoise_var = tex2D(_WaveNoise,TRANSFORM_TEX(node_839, _WaveNoise));
                float2 node_9892 = ((i.uv0+node_3091.g*float2(-0.1,-0.12))*1.0);
                float4 _WaveTex_var = tex2D(_WaveTex,TRANSFORM_TEX(node_9892, _WaveTex));
                float2 node_8441 = (lerp(i.uv0,(i.uv0+((_NoisePower*(_WaveNoise_var.r*0.4+-0.2))+(_WaveTex_var.g*0.2+0.0))),_NoiseMovement)+(pow(node_3154,1.5)*0.15+-0.1)*float2(0,1));
                float4 node_1524 = tex2D(_node_6028,TRANSFORM_TEX(node_8441, _node_6028));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_7801_if_leA = step(sin((node_6758+(3.141592654*(-0.5)))),0.0);
                float node_7801_if_leB = step(0.0,sin((node_6758+(3.141592654*(-0.5)))));
                float node_3824 = (pow(node_3154,4.0)*-1.0+1.0);
                float node_603 = (_MainTex_var.a*_Color.a*i.vertexColor.a*node_1524.a*lerp((node_7801_if_leA*pow((node_3154*-1.0+1.0),1.0))+(node_7801_if_leB*node_3824),node_3824,node_7801_if_leA*node_7801_if_leB)); // A
                float3 emissive = ((node_1524.rgb*_Color.rgb*_Brightness)*node_603);
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
