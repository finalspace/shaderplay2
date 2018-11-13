// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:0,x:34414,y:32442,varname:node_0,prsc:2|diff-3294-OUT,spec-75-OUT,gloss-80-OUT,normal-7782-OUT,transm-29-OUT,lwrap-29-OUT,alpha-5359-OUT,refract-14-OUT;n:type:ShaderForge.SFN_Slider,id:13,x:32934,y:33067,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:_Distortion,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4846151,max:1;n:type:ShaderForge.SFN_Multiply,id:14,x:33908,y:32866,varname:node_14,prsc:2|A-16-OUT,B-220-OUT;n:type:ShaderForge.SFN_ComponentMask,id:16,x:33661,y:32873,varname:node_16,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-25-RGB;n:type:ShaderForge.SFN_Tex2d,id:25,x:32338,y:32516,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:_Refraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a0a2bfdcd10b3374eb2df5ec8b9c8a85,ntxv:3,isnm:True|UVIN-7792-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:26,x:31367,y:32350,varname:node_26,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:29,x:34145,y:32577,varname:node_29,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:75,x:33991,y:32337,varname:node_75,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:215,x:32869,y:32484,varname:node_215,prsc:2|A-216-OUT,B-25-RGB,T-6288-OUT;n:type:ShaderForge.SFN_Vector3,id:216,x:32481,y:32277,varname:node_216,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:220,x:33685,y:33077,varname:node_220,prsc:2|A-13-OUT,B-221-OUT;n:type:ShaderForge.SFN_Vector1,id:221,x:33432,y:33121,varname:node_221,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Panner,id:7792,x:32077,y:32501,varname:node_7792,prsc:2,spu:0.02,spv:-0.02|UVIN-2919-OUT;n:type:ShaderForge.SFN_Color,id:9984,x:33479,y:31881,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.213793,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:80,x:33935,y:32444,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2738053,max:1;n:type:ShaderForge.SFN_Slider,id:635,x:33649,y:32610,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:_Opacity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2905983,max:1;n:type:ShaderForge.SFN_VertexColor,id:5227,x:33344,y:32002,varname:node_5227,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1459,x:33743,y:32056,varname:node_1459,prsc:2|A-9984-RGB,B-5227-A;n:type:ShaderForge.SFN_Slider,id:6288,x:32260,y:32784,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:_Reflection,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Normalize,id:7782,x:33477,y:32427,varname:node_7782,prsc:2|IN-4524-OUT;n:type:ShaderForge.SFN_Multiply,id:2919,x:31776,y:32607,varname:node_2919,prsc:2|A-26-UVOUT,B-8895-OUT;n:type:ShaderForge.SFN_Vector1,id:8895,x:31517,y:32802,varname:node_8895,prsc:2,v1:40;n:type:ShaderForge.SFN_NormalBlend,id:4524,x:33286,y:32402,varname:node_4524,prsc:2|BSE-215-OUT,DTL-8323-RGB;n:type:ShaderForge.SFN_Tex2d,id:8323,x:32458,y:32077,ptovrint:False,ptlb:Normal Detail,ptin:_NormalDetail,varname:_NormalDetail,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-9246-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8516,x:32101,y:32121,varname:node_8516,prsc:2|A-26-UVOUT,B-6671-OUT;n:type:ShaderForge.SFN_Vector1,id:6671,x:31899,y:32223,varname:node_6671,prsc:2,v1:100;n:type:ShaderForge.SFN_Panner,id:9246,x:32267,y:32173,varname:node_9246,prsc:2,spu:-0.03,spv:-0.03|UVIN-8516-OUT;n:type:ShaderForge.SFN_Fresnel,id:2748,x:33562,y:32283,varname:node_2748,prsc:2|NRM-215-OUT,EXP-1521-OUT;n:type:ShaderForge.SFN_VertexColor,id:2359,x:33785,y:32702,varname:node_2359,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5359,x:34004,y:32650,varname:node_5359,prsc:2|A-635-OUT,B-2359-A;n:type:ShaderForge.SFN_Multiply,id:3294,x:33977,y:32133,varname:node_3294,prsc:2|A-1459-OUT,B-2748-OUT;n:type:ShaderForge.SFN_Slider,id:1521,x:33189,y:32171,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_1521,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;proporder:25-8323-9984-1521-13-6288-80-635;pass:END;sub:END;*/

Shader "Shader Forge/waterSurfaceSea_01" {
    Properties {
        _Refraction ("Refraction", 2D) = "bump" {}
        _NormalDetail ("Normal Detail", 2D) = "bump" {}
        _Color ("Color", Color) = (0,0.213793,1,1)
        _Fresnel ("Fresnel", Range(0, 10)) = 0
        _Distortion ("Distortion", Range(0, 1)) = 0.4846151
        _Reflection ("Reflection", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.2738053
        _Opacity ("Opacity", Range(0, 1)) = 0.2905983
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float _Distortion;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform float4 _Color;
            uniform float _Gloss;
            uniform float _Opacity;
            uniform float _Reflection;
            uniform sampler2D _NormalDetail; uniform float4 _NormalDetail_ST;
            uniform float _Fresnel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_1940 = _Time + _TimeEditor;
                float2 node_7792 = ((i.uv0*40.0)+node_1940.g*float2(0.02,-0.02));
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_7792, _Refraction)));
                float3 node_215 = lerp(float3(0,0,1),_Refraction_var.rgb,_Reflection);
                float2 node_9246 = ((i.uv0*100.0)+node_1940.g*float2(-0.03,-0.03));
                float3 _NormalDetail_var = UnpackNormal(tex2D(_NormalDetail,TRANSFORM_TEX(node_9246, _NormalDetail)));
                float3 node_4524_nrm_base = node_215 + float3(0,0,1);
                float3 node_4524_nrm_detail = _NormalDetail_var.rgb * float3(-1,-1,1);
                float3 node_4524_nrm_combined = node_4524_nrm_base*dot(node_4524_nrm_base, node_4524_nrm_detail)/node_4524_nrm_base.z - node_4524_nrm_detail;
                float3 node_4524 = node_4524_nrm_combined;
                float3 normalLocal = normalize(node_4524);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction_var.rgb.rg*(_Distortion*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 diffuseColor = ((_Color.rgb*i.vertexColor.a)*pow(1.0-max(0,dot(node_215, viewDirection)),_Fresnel)); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_29 = 1.0;
                float3 w = float3(node_29,node_29,node_29)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_29,node_29,node_29);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                NdotLWrap = max(float3(0,0,0), NdotLWrap);
                float3 directDiffuse = ((forwardLight+backLight) + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(lerp(sceneColor.rgb, finalColor,(_Opacity*i.vertexColor.a)),1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float _Distortion;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform float4 _Color;
            uniform float _Gloss;
            uniform float _Opacity;
            uniform float _Reflection;
            uniform sampler2D _NormalDetail; uniform float4 _NormalDetail_ST;
            uniform float _Fresnel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_5066 = _Time + _TimeEditor;
                float2 node_7792 = ((i.uv0*40.0)+node_5066.g*float2(0.02,-0.02));
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_7792, _Refraction)));
                float3 node_215 = lerp(float3(0,0,1),_Refraction_var.rgb,_Reflection);
                float2 node_9246 = ((i.uv0*100.0)+node_5066.g*float2(-0.03,-0.03));
                float3 _NormalDetail_var = UnpackNormal(tex2D(_NormalDetail,TRANSFORM_TEX(node_9246, _NormalDetail)));
                float3 node_4524_nrm_base = node_215 + float3(0,0,1);
                float3 node_4524_nrm_detail = _NormalDetail_var.rgb * float3(-1,-1,1);
                float3 node_4524_nrm_combined = node_4524_nrm_base*dot(node_4524_nrm_base, node_4524_nrm_detail)/node_4524_nrm_base.z - node_4524_nrm_detail;
                float3 node_4524 = node_4524_nrm_combined;
                float3 normalLocal = normalize(node_4524);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction_var.rgb.rg*(_Distortion*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 diffuseColor = ((_Color.rgb*i.vertexColor.a)*pow(1.0-max(0,dot(node_215, viewDirection)),_Fresnel)); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_29 = 1.0;
                float3 w = float3(node_29,node_29,node_29)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_29,node_29,node_29);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                NdotLWrap = max(float3(0,0,0), NdotLWrap);
                float3 directDiffuse = ((forwardLight+backLight) + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * (_Opacity*i.vertexColor.a),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
