// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32814,y:32360,varname:node_2865,prsc:2|diff-6115-OUT,spec-2355-OUT,gloss-322-OUT,alpha-1658-OUT;n:type:ShaderForge.SFN_Color,id:7362,x:29281,y:31647,ptovrint:False,ptlb:ColorA,ptin:_ColorA,varname:node_7362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3602941,c3:0.3602941,c4:1;n:type:ShaderForge.SFN_Color,id:1398,x:29281,y:31820,ptovrint:False,ptlb:ColorB,ptin:_ColorB,varname:node_1398,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4411765,c2:0.9306288,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:4003,x:29553,y:31802,varname:node_4003,prsc:2|A-7362-RGB,B-1398-RGB,T-4269-OUT;n:type:ShaderForge.SFN_DepthBlend,id:2335,x:28754,y:33151,varname:node_2335,prsc:2|DIST-162-OUT;n:type:ShaderForge.SFN_Slider,id:162,x:28332,y:33150,ptovrint:False,ptlb:DepthInputDistance,ptin:_DepthInputDistance,varname:node_162,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:100;n:type:ShaderForge.SFN_ViewVector,id:4496,x:28489,y:33370,varname:node_4496,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6897,x:28489,y:33517,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7437,x:28741,y:33432,varname:node_7437,prsc:2,dt:4|A-4496-OUT,B-6897-OUT;n:type:ShaderForge.SFN_Divide,id:1240,x:28991,y:33299,varname:node_1240,prsc:2|A-2335-OUT,B-7437-OUT;n:type:ShaderForge.SFN_Clamp01,id:4269,x:29242,y:33299,varname:node_4269,prsc:2|IN-1240-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8489,x:29542,y:32731,varname:node_8489,prsc:2|IN-4269-OUT,IMIN-3001-OUT,IMAX-1982-OUT,OMIN-600-OUT,OMAX-3415-OUT;n:type:ShaderForge.SFN_Vector1,id:600,x:29101,y:32833,varname:node_600,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3415,x:29101,y:32888,varname:node_3415,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:3001,x:28944,y:32673,ptovrint:False,ptlb:FoamMin,ptin:_FoamMin,varname:node_3001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1982,x:28944,y:32760,ptovrint:False,ptlb:FoamMax,ptin:_FoamMax,varname:node_1982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8685,x:29963,y:33600,varname:node_8685,prsc:2|IN-4269-OUT,IMIN-909-OUT,IMAX-5018-OUT,OMIN-2231-OUT,OMAX-7227-OUT;n:type:ShaderForge.SFN_Vector1,id:2231,x:29737,y:33794,varname:node_2231,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7227,x:29737,y:33849,varname:node_7227,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:909,x:29580,y:33634,ptovrint:False,ptlb:DepthMin,ptin:_DepthMin,varname:_FoamMin_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5018,x:29580,y:33721,ptovrint:False,ptlb:DepthMax,ptin:_DepthMax,varname:_FoamMax_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ComponentMask,id:7601,x:31333,y:32733,varname:node_7601,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9099-OUT;n:type:ShaderForge.SFN_Multiply,id:6889,x:31532,y:32733,varname:node_6889,prsc:2|A-7601-OUT,B-7994-OUT;n:type:ShaderForge.SFN_Clamp01,id:1658,x:32295,y:32734,varname:node_1658,prsc:2|IN-6905-OUT;n:type:ShaderForge.SFN_Slider,id:7994,x:31375,y:32909,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_7994,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:4445,x:30262,y:32545,ptovrint:False,ptlb:FoamTexturePower,ptin:_FoamTexturePower,varname:node_4445,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:10;n:type:ShaderForge.SFN_Clamp01,id:9099,x:31080,y:32661,varname:node_9099,prsc:2|IN-6301-OUT;n:type:ShaderForge.SFN_Add,id:4788,x:32119,y:32079,varname:node_4788,prsc:2|A-4003-OUT,B-189-OUT;n:type:ShaderForge.SFN_Clamp01,id:6115,x:32380,y:32083,varname:node_6115,prsc:2|IN-4788-OUT;n:type:ShaderForge.SFN_Slider,id:3135,x:31176,y:32421,ptovrint:False,ptlb:FoamBrightness,ptin:_FoamBrightness,varname:node_3135,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:189,x:31333,y:32497,varname:node_189,prsc:2|A-3135-OUT,B-9099-OUT;n:type:ShaderForge.SFN_Add,id:6905,x:31938,y:32886,varname:node_6905,prsc:2|A-6889-OUT,B-9861-OUT;n:type:ShaderForge.SFN_Slider,id:847,x:31403,y:33545,ptovrint:False,ptlb:depthRemapMaskPower,ptin:_depthRemapMaskPower,varname:node_847,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9861,x:31560,y:33393,varname:node_9861,prsc:2|A-8685-OUT,B-847-OUT;n:type:ShaderForge.SFN_OneMinus,id:6997,x:29888,y:32731,varname:node_6997,prsc:2|IN-8903-OUT;n:type:ShaderForge.SFN_Clamp01,id:8903,x:29709,y:32731,varname:node_8903,prsc:2|IN-8489-OUT;n:type:ShaderForge.SFN_Vector1,id:2355,x:32617,y:32395,varname:node_2355,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:322,x:32617,y:32457,varname:node_322,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Tex2d,id:9627,x:29556,y:32086,ptovrint:False,ptlb:FoamTexture,ptin:_FoamTexture,varname:node_9627,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cfb478ea62d034c43a0c3ea6175d0388,ntxv:0,isnm:False|UVIN-5932-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3947,x:29915,y:32065,varname:node_3947,prsc:2|A-4003-OUT,B-9627-RGB;n:type:ShaderForge.SFN_Multiply,id:7827,x:30181,y:32311,varname:node_7827,prsc:2|A-3947-OUT,B-6997-OUT;n:type:ShaderForge.SFN_Multiply,id:5296,x:30419,y:32391,varname:node_5296,prsc:2|A-7827-OUT,B-4445-OUT;n:type:ShaderForge.SFN_Slider,id:4721,x:29796,y:32933,ptovrint:False,ptlb:FoamPower,ptin:_FoamPower,varname:node_4721,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:6409,x:30179,y:32828,varname:node_6409,prsc:2|A-6997-OUT,B-4721-OUT;n:type:ShaderForge.SFN_Add,id:6301,x:30755,y:32664,varname:node_6301,prsc:2|A-5296-OUT,B-6409-OUT;n:type:ShaderForge.SFN_TexCoord,id:3210,x:28931,y:32086,varname:node_3210,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:5932,x:29195,y:32088,varname:node_5932,prsc:2,spu:0,spv:-0.05|UVIN-3210-UVOUT;proporder:7362-1398-162-3001-1982-7994-4445-3135-909-5018-847-9627-4721;pass:END;sub:END;*/

Shader "C1/WaterFoam2" {
    Properties {
        _ColorA ("ColorA", Color) = (1,0.3602941,0.3602941,1)
        _ColorB ("ColorB", Color) = (0.4411765,0.9306288,1,1)
        _DepthInputDistance ("DepthInputDistance", Range(0, 100)) = 10
        _FoamMin ("FoamMin", Range(0, 1)) = 0
        _FoamMax ("FoamMax", Range(0, 1)) = 1
        _Opacity ("Opacity", Range(0, 1)) = 0.5
        _FoamTexturePower ("FoamTexturePower", Range(0, 10)) = 2
        _FoamBrightness ("FoamBrightness", Range(0, 10)) = 1
        _DepthMin ("DepthMin", Range(0, 1)) = 0
        _DepthMax ("DepthMax", Range(0, 1)) = 1
        _depthRemapMaskPower ("depthRemapMaskPower", Range(0, 1)) = 0
        _FoamTexture ("FoamTexture", 2D) = "white" {}
        _FoamPower ("FoamPower", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float _DepthInputDistance;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _DepthMin;
            uniform float _DepthMax;
            uniform float _Opacity;
            uniform float _FoamTexturePower;
            uniform float _FoamBrightness;
            uniform float _depthRemapMaskPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _FoamPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.8;
                float perceptualRoughness = 1.0 - 0.8;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
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
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_4269 = saturate((saturate((sceneZ-partZ)/_DepthInputDistance)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float3 node_4003 = lerp(_ColorA.rgb,_ColorB.rgb,node_4269);
                float4 node_9552 = _Time + _TimeEditor;
                float2 node_5932 = (i.uv0+node_9552.g*float2(0,-0.05));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_5932, _FoamTexture));
                float node_600 = 0.0;
                float node_6997 = (1.0 - saturate((node_600 + ( (node_4269 - _FoamMin) * (1.0 - node_600) ) / (_FoamMax - _FoamMin))));
                float3 node_9099 = saturate(((((node_4003*_FoamTexture_var.rgb)*node_6997)*_FoamTexturePower)+(node_6997*_FoamPower)));
                float3 diffuseColor = saturate((node_4003+(_FoamBrightness*node_9099))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_2231 = 0.0;
                fixed4 finalRGBA = fixed4(finalColor,saturate(((node_9099.r*_Opacity)+((node_2231 + ( (node_4269 - _DepthMin) * (1.0 - node_2231) ) / (_DepthMax - _DepthMin))*_depthRemapMaskPower))));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float _DepthInputDistance;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _DepthMin;
            uniform float _DepthMax;
            uniform float _Opacity;
            uniform float _FoamTexturePower;
            uniform float _FoamBrightness;
            uniform float _depthRemapMaskPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _FoamPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.8;
                float perceptualRoughness = 1.0 - 0.8;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_4269 = saturate((saturate((sceneZ-partZ)/_DepthInputDistance)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float3 node_4003 = lerp(_ColorA.rgb,_ColorB.rgb,node_4269);
                float4 node_4597 = _Time + _TimeEditor;
                float2 node_5932 = (i.uv0+node_4597.g*float2(0,-0.05));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_5932, _FoamTexture));
                float node_600 = 0.0;
                float node_6997 = (1.0 - saturate((node_600 + ( (node_4269 - _FoamMin) * (1.0 - node_600) ) / (_FoamMax - _FoamMin))));
                float3 node_9099 = saturate(((((node_4003*_FoamTexture_var.rgb)*node_6997)*_FoamTexturePower)+(node_6997*_FoamPower)));
                float3 diffuseColor = saturate((node_4003+(_FoamBrightness*node_9099))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_2231 = 0.0;
                fixed4 finalRGBA = fixed4(finalColor * saturate(((node_9099.r*_Opacity)+((node_2231 + ( (node_4269 - _DepthMin) * (1.0 - node_2231) ) / (_DepthMax - _DepthMin))*_depthRemapMaskPower))),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float _DepthInputDistance;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _FoamTexturePower;
            uniform float _FoamBrightness;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _FoamPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_4269 = saturate((saturate((sceneZ-partZ)/_DepthInputDistance)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float3 node_4003 = lerp(_ColorA.rgb,_ColorB.rgb,node_4269);
                float4 node_6900 = _Time + _TimeEditor;
                float2 node_5932 = (i.uv0+node_6900.g*float2(0,-0.05));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_5932, _FoamTexture));
                float node_600 = 0.0;
                float node_6997 = (1.0 - saturate((node_600 + ( (node_4269 - _FoamMin) * (1.0 - node_600) ) / (_FoamMax - _FoamMin))));
                float3 node_9099 = saturate(((((node_4003*_FoamTexture_var.rgb)*node_6997)*_FoamTexturePower)+(node_6997*_FoamPower)));
                float3 diffColor = saturate((node_4003+(_FoamBrightness*node_9099)));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float roughness = 1.0 - 0.8;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
