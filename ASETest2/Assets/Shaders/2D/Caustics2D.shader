// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-1749-OUT,clip-4073-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:31851,y:32858,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,tex:3a5a96df060a5cf4a9cc0c59e13486b7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1086,x:32812,y:32818,cmnt:RGB,varname:node_1086,prsc:2|A-4291-OUT,B-5983-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32311,y:33045,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32311,y:33196,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:33025,y:32818,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-4073-OUT;n:type:ShaderForge.SFN_TexCoord,id:7577,x:30289,y:32377,varname:node_7577,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:5008,x:30486,y:32377,varname:node_5008,prsc:2,spu:0.02,spv:0.02|UVIN-7577-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5098,x:30703,y:32377,ptovrint:False,ptlb:NoiseTexture,ptin:_NoiseTexture,varname:node_5098,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:82324340e56b74a18a436642ac78d477,ntxv:0,isnm:False|UVIN-5008-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:6065,x:30925,y:32377,varname:node_6065,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-5098-G;n:type:ShaderForge.SFN_Add,id:2848,x:31120,y:32377,varname:node_2848,prsc:2|A-6065-OUT,B-2390-OUT;n:type:ShaderForge.SFN_Multiply,id:2390,x:30589,y:32657,varname:node_2390,prsc:2|A-7577-UVOUT,B-9454-OUT;n:type:ShaderForge.SFN_Vector1,id:9454,x:30589,y:32784,varname:node_9454,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:2174,x:30893,y:32703,ptovrint:False,ptlb:Thickness,ptin:_Thickness,varname:node_2174,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.354488,max:2;n:type:ShaderForge.SFN_OneMinus,id:7188,x:31309,y:32600,varname:node_7188,prsc:2|IN-2174-OUT;n:type:ShaderForge.SFN_Subtract,id:5867,x:31557,y:32377,varname:node_5867,prsc:2|A-6629-G,B-7188-OUT;n:type:ShaderForge.SFN_Multiply,id:1714,x:31868,y:32415,varname:node_1714,prsc:2|A-5867-OUT,B-2091-OUT;n:type:ShaderForge.SFN_Slider,id:2091,x:31478,y:32610,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_2091,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.027582,max:2;n:type:ShaderForge.SFN_Tex2d,id:6629,x:31309,y:32377,ptovrint:False,ptlb:node_6629,ptin:_node_6629,varname:node_6629,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:41d08f37049fe4539be095201be35d03,ntxv:0,isnm:False|UVIN-2848-OUT;n:type:ShaderForge.SFN_Multiply,id:4291,x:32133,y:32670,varname:node_4291,prsc:2|A-1714-OUT,B-4805-RGB;n:type:ShaderForge.SFN_Multiply,id:4073,x:32789,y:33008,varname:node_4073,prsc:2|A-4805-A,B-5983-A,C-1714-OUT;proporder:4805-5983-5098-2174-2091-6629;pass:END;sub:END;*/

Shader "Shader Forge/Caustics2D" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _NoiseTexture ("NoiseTexture", 2D) = "white" {}
        _Thickness ("Thickness", Range(0, 2)) = 1.354488
        _Opacity ("Opacity", Range(0, 2)) = 1.027582
        _node_6629 ("node_6629", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Thickness;
            uniform float _Opacity;
            uniform sampler2D _node_6629; uniform float4 _node_6629_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_1324 = _Time + _TimeEditor;
                float2 node_5008 = (i.uv0+node_1324.g*float2(0.02,0.02));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(node_5008, _NoiseTexture));
                float2 node_2848 = ((_NoiseTexture_var.g*0.1+0.0)+(i.uv0*0.5));
                float4 _node_6629_var = tex2D(_node_6629,TRANSFORM_TEX(node_2848, _node_6629));
                float node_1714 = ((_node_6629_var.g-(1.0 - _Thickness))*_Opacity);
                float node_4073 = (_MainTex_var.a*_Color.a*node_1714);
                clip(node_4073 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (((node_1714*_MainTex_var.rgb)*_Color.rgb)*node_4073);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Thickness;
            uniform float _Opacity;
            uniform sampler2D _node_6629; uniform float4 _node_6629_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_2048 = _Time + _TimeEditor;
                float2 node_5008 = (i.uv0+node_2048.g*float2(0.02,0.02));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(node_5008, _NoiseTexture));
                float2 node_2848 = ((_NoiseTexture_var.g*0.1+0.0)+(i.uv0*0.5));
                float4 _node_6629_var = tex2D(_node_6629,TRANSFORM_TEX(node_2848, _node_6629));
                float node_1714 = ((_node_6629_var.g-(1.0 - _Thickness))*_Opacity);
                float node_4073 = (_MainTex_var.a*_Color.a*node_1714);
                clip(node_4073 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
