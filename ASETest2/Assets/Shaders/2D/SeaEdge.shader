// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-1749-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:31638,y:33231,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,tex:6337f74ea4d0447fcabf466fbeb336d8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1086,x:32637,y:32987,cmnt:RGB,varname:node_1086,prsc:2|A-3609-OUT,B-5983-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32073,y:33477,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32095,y:33708,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:32890,y:33105,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32677,y:33279,cmnt:A,varname:node_603,prsc:2|A-4805-A,B-5983-A,C-5376-A,D-1524-A;n:type:ShaderForge.SFN_Vector1,id:8436,x:30477,y:31813,varname:node_8436,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:2145,x:30477,y:31900,varname:node_2145,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2912,x:30664,y:31848,varname:node_2912,prsc:2|A-8436-OUT,B-2145-T;n:type:ShaderForge.SFN_Vector1,id:1793,x:30634,y:31726,varname:node_1793,prsc:2,v1:4;n:type:ShaderForge.SFN_Subtract,id:6208,x:30866,y:31799,varname:node_6208,prsc:2|A-1793-OUT,B-2912-OUT;n:type:ShaderForge.SFN_Sin,id:815,x:31029,y:31799,varname:node_815,prsc:2|IN-6208-OUT;n:type:ShaderForge.SFN_RemapRange,id:7632,x:31219,y:31799,varname:node_7632,prsc:2,frmn:-1,frmx:1,tomn:1,tomx:0.5|IN-815-OUT;n:type:ShaderForge.SFN_TexCoord,id:8046,x:31219,y:31636,varname:node_8046,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:8210,x:31465,y:31760,varname:node_8210,prsc:2,spu:0,spv:1|UVIN-8046-UVOUT,DIST-7632-OUT;n:type:ShaderForge.SFN_Tex2d,id:9846,x:31687,y:31760,varname:node_9846,prsc:2,tex:ebdd681c9a3b0492b843ae093d269de0,ntxv:0,isnm:False|UVIN-8210-UVOUT,TEX-6028-TEX;n:type:ShaderForge.SFN_OneMinus,id:5243,x:31894,y:31760,varname:node_5243,prsc:2|IN-9846-B;n:type:ShaderForge.SFN_Vector1,id:9441,x:31894,y:31919,varname:node_9441,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:7416,x:32066,y:31760,varname:node_7416,prsc:2|A-5243-OUT,B-9441-OUT;n:type:ShaderForge.SFN_Clamp01,id:3696,x:32251,y:31760,varname:node_3696,prsc:2|IN-7416-OUT;n:type:ShaderForge.SFN_TexCoord,id:5047,x:29206,y:32739,varname:node_5047,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7917,x:29412,y:32739,varname:node_7917,prsc:2,spu:0,spv:0.2|UVIN-5047-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4907,x:29412,y:32892,varname:node_4907,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:9892,x:29593,y:32739,varname:node_9892,prsc:2|A-7917-UVOUT,B-4907-OUT;n:type:ShaderForge.SFN_Tex2d,id:8526,x:29801,y:32739,ptovrint:False,ptlb:node_8526,ptin:_node_8526,varname:node_8526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cd460ee4ac5c1e746b7a734cc7cc64dd,ntxv:0,isnm:False|UVIN-9892-OUT;n:type:ShaderForge.SFN_RemapRange,id:6356,x:29998,y:32739,varname:node_6356,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8526-B;n:type:ShaderForge.SFN_Slider,id:6180,x:30295,y:32722,ptovrint:False,ptlb:NoiseMovement,ptin:_NoiseMovement,varname:node_6180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.085,max:1;n:type:ShaderForge.SFN_TexCoord,id:6315,x:29975,y:32558,varname:node_6315,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:6814,x:30156,y:32652,varname:node_6814,prsc:2|A-6315-UVOUT,B-6356-OUT;n:type:ShaderForge.SFN_Lerp,id:8482,x:30413,y:32569,varname:node_8482,prsc:2|A-6315-UVOUT,B-6814-OUT,T-6180-OUT;n:type:ShaderForge.SFN_Vector1,id:5935,x:29583,y:33124,varname:node_5935,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:9013,x:29583,y:33228,varname:node_9013,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8533,x:29788,y:33171,varname:node_8533,prsc:2|A-5935-OUT,B-9013-T;n:type:ShaderForge.SFN_Sin,id:536,x:29966,y:33171,varname:node_536,prsc:2|IN-8533-OUT;n:type:ShaderForge.SFN_RemapRange,id:6405,x:30140,y:33171,varname:node_6405,prsc:2,frmn:-1,frmx:1,tomn:-0.35,tomx:0.05|IN-536-OUT;n:type:ShaderForge.SFN_Panner,id:8441,x:30773,y:32737,varname:node_8441,prsc:2,spu:0,spv:1|UVIN-8482-OUT,DIST-6405-OUT;n:type:ShaderForge.SFN_OneMinus,id:6018,x:31573,y:32391,varname:node_6018,prsc:2|IN-1524-G;n:type:ShaderForge.SFN_Tex2d,id:9969,x:31573,y:32221,ptovrint:False,ptlb:node_9969,ptin:_node_9969,varname:node_9969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6337f74ea4d0447fcabf466fbeb336d8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8579,x:31840,y:32295,varname:node_8579,prsc:2|A-9969-RGB,B-6018-OUT;n:type:ShaderForge.SFN_Multiply,id:9144,x:32159,y:32240,varname:node_9144,prsc:2|A-3696-OUT,B-8579-OUT;n:type:ShaderForge.SFN_Add,id:9830,x:32228,y:32754,varname:node_9830,prsc:2|A-9144-OUT,B-1524-RGB;n:type:ShaderForge.SFN_Tex2d,id:1524,x:31233,y:32731,varname:node_1524,prsc:2,tex:ebdd681c9a3b0492b843ae093d269de0,ntxv:0,isnm:False|UVIN-8441-UVOUT,TEX-6028-TEX;n:type:ShaderForge.SFN_Multiply,id:3609,x:31893,y:33078,varname:node_3609,prsc:2|A-1524-RGB,B-4805-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:6028,x:30587,y:32251,ptovrint:False,ptlb:node_6028,ptin:_node_6028,varname:node_6028,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ebdd681c9a3b0492b843ae093d269de0,ntxv:0,isnm:False;proporder:4805-5983-8526-6180-9969-6028;pass:END;sub:END;*/

Shader "Shader Forge/SeaEdge" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _node_8526 ("node_8526", 2D) = "white" {}
        _NoiseMovement ("NoiseMovement", Range(0, 1)) = 0.085
        _node_9969 ("node_9969", 2D) = "white" {}
        _node_6028 ("node_6028", 2D) = "white" {}
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
            uniform sampler2D _node_8526; uniform float4 _node_8526_ST;
            uniform float _NoiseMovement;
            uniform sampler2D _node_6028; uniform float4 _node_6028_ST;
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
                float4 node_6584 = _Time + _TimeEditor;
                float2 node_9892 = ((i.uv0+node_6584.g*float2(0,0.2))*0.1);
                float4 _node_8526_var = tex2D(_node_8526,TRANSFORM_TEX(node_9892, _node_8526));
                float2 node_8441 = (lerp(i.uv0,(i.uv0+(_node_8526_var.b*2.0+-1.0)),_NoiseMovement)+(sin((1.0*node_9013.g))*0.2+-0.15)*float2(0,1));
                float4 node_1524 = tex2D(_node_6028,TRANSFORM_TEX(node_8441, _node_6028));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_603 = (_MainTex_var.a*_Color.a*i.vertexColor.a*node_1524.a); // A
                float3 emissive = (((node_1524.rgb*_MainTex_var.rgb)*_Color.rgb)*node_603);
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
