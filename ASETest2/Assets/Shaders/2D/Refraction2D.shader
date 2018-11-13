// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:32944,y:32497,varname:node_1873,prsc:2|normal-5541-OUT,emission-1749-OUT,alpha-8083-OUT,refract-723-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:32169,y:31914,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1086,x:32430,y:32003,cmnt:RGB,varname:node_1086,prsc:2|A-4805-RGB,B-5983-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32154,y:32201,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:31962,y:32293,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:32643,y:32003,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32418,y:32204,cmnt:A,varname:node_603,prsc:2|A-4805-A,B-5983-A;n:type:ShaderForge.SFN_TexCoord,id:8751,x:30863,y:32743,varname:node_8751,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:6340,x:31040,y:32743,varname:node_6340,prsc:2,spu:0.02,spv:0.02|UVIN-8751-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:3606,x:31213,y:32743,ptovrint:False,ptlb:FeractionTex,ptin:_FeractionTex,varname:node_3606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b3d940e75e1f5d24684cd93a2758e1bf,ntxv:3,isnm:True|UVIN-6340-UVOUT;n:type:ShaderForge.SFN_Slider,id:5985,x:31028,y:33041,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_5985,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4273504,max:1;n:type:ShaderForge.SFN_Vector1,id:433,x:31185,y:33119,varname:node_433,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:6420,x:31360,y:33041,varname:node_6420,prsc:2|A-5985-OUT,B-433-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8150,x:31402,y:32743,varname:node_8150,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3606-RGB;n:type:ShaderForge.SFN_Slider,id:594,x:30940,y:32608,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_594,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector3,id:7429,x:31052,y:32487,varname:node_7429,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:5235,x:31402,y:32526,varname:node_5235,prsc:2|A-7429-OUT,B-3606-RGB,T-594-OUT;n:type:ShaderForge.SFN_Multiply,id:723,x:31625,y:32907,varname:node_723,prsc:2|A-8150-OUT,B-6420-OUT;n:type:ShaderForge.SFN_Normalize,id:5541,x:31601,y:32526,varname:node_5541,prsc:2|IN-5235-OUT;n:type:ShaderForge.SFN_Slider,id:8083,x:32496,y:32751,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_8083,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7600693,max:1;proporder:4805-5983-3606-594-5985-8083;pass:END;sub:END;*/

Shader "Shader Forge/Refraction2D" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _FeractionTex ("FeractionTex", 2D) = "bump" {}
        _Reflection ("Reflection", Range(0, 1)) = 0
        _Distortion ("Distortion", Range(0, 1)) = 0.4273504
        _Opacity ("Opacity", Range(0, 1)) = 0.7600693
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
        GrabPass{ }
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
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _FeractionTex; uniform float4 _FeractionTex_ST;
            uniform float _Distortion;
            uniform float _Reflection;
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_8451 = _Time + _TimeEditor;
                float2 node_6340 = (i.uv0+node_8451.g*float2(0.02,0.02));
                float3 _FeractionTex_var = UnpackNormal(tex2D(_FeractionTex,TRANSFORM_TEX(node_6340, _FeractionTex)));
                float3 normalLocal = normalize(lerp(float3(0,0,1),_FeractionTex_var.rgb,_Reflection));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_FeractionTex_var.rgb.rg*(_Distortion*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = ((_MainTex_var.rgb*_Color.rgb)*(_MainTex_var.a*_Color.a));
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,_Opacity),1);
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
