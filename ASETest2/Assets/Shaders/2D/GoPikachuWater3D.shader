// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33251,y:32901,varname:node_1873,prsc:2|emission-7773-OUT,alpha-7817-OUT,refract-2220-OUT;n:type:ShaderForge.SFN_Multiply,id:1086,x:32604,y:32815,cmnt:RGB,varname:node_1086,prsc:2|A-5773-RGB,B-8559-OUT;n:type:ShaderForge.SFN_TexCoord,id:5693,x:30414,y:31669,varname:node_5693,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9805,x:30631,y:31669,varname:node_9805,prsc:2,spu:0.01,spv:0.01|UVIN-5693-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5032,x:31015,y:31667,varname:node_5032,prsc:2,tex:41d08f37049fe4539be095201be35d03,ntxv:0,isnm:False|UVIN-9805-UVOUT,TEX-5195-TEX;n:type:ShaderForge.SFN_Step,id:9843,x:31724,y:31699,varname:node_9843,prsc:2|A-9261-OUT,B-8900-OUT;n:type:ShaderForge.SFN_Multiply,id:8900,x:31473,y:31801,varname:node_8900,prsc:2|A-5032-R,B-1481-R;n:type:ShaderForge.SFN_Slider,id:9261,x:31285,y:31586,ptovrint:False,ptlb:ReflectionPower,ptin:_ReflectionPower,varname:node_9261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.07189525,max:1;n:type:ShaderForge.SFN_Add,id:7773,x:32794,y:32618,varname:node_7773,prsc:2|A-3801-OUT,B-2580-OUT,C-219-OUT,D-1086-OUT;n:type:ShaderForge.SFN_TexCoord,id:1015,x:30414,y:31881,varname:node_1015,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:2159,x:30631,y:31881,varname:node_2159,prsc:2,spu:-0.01,spv:-0.005|UVIN-1015-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1481,x:31015,y:31879,varname:_node_5032_copy,prsc:2,tex:41d08f37049fe4539be095201be35d03,ntxv:0,isnm:False|UVIN-2159-UVOUT,TEX-5195-TEX;n:type:ShaderForge.SFN_Slider,id:8559,x:32193,y:32987,ptovrint:False,ptlb:BaseBrightness,ptin:_BaseBrightness,varname:node_8559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Tex2d,id:4163,x:31147,y:32463,varname:node_4163,prsc:2,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False|UVIN-1449-OUT,TEX-8015-TEX;n:type:ShaderForge.SFN_TexCoord,id:4000,x:29884,y:32445,varname:node_4000,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:15,x:30088,y:32445,varname:node_15,prsc:2,spu:0,spv:0|UVIN-4000-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2223,x:30274,y:32445,ptovrint:False,ptlb:Layer2Noise,ptin:_Layer2Noise,varname:node_2223,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-15-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:4876,x:30464,y:32445,varname:node_4876,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.05|IN-2223-R;n:type:ShaderForge.SFN_TexCoord,id:4632,x:30274,y:32624,varname:node_4632,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1449,x:30735,y:32448,varname:node_1449,prsc:2|A-4876-OUT,B-2950-UVOUT;n:type:ShaderForge.SFN_Panner,id:2950,x:30464,y:32624,varname:node_2950,prsc:2,spu:-0.02,spv:-0.02|UVIN-4632-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2580,x:31643,y:32495,varname:node_2580,prsc:2|A-8472-RGB,B-6797-OUT,C-4163-R,D-3945-R;n:type:ShaderForge.SFN_Slider,id:6797,x:31191,y:32363,ptovrint:False,ptlb:Layer2Brightness,ptin:_Layer2Brightness,varname:node_6797,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2791393,max:2;n:type:ShaderForge.SFN_Color,id:8472,x:31348,y:32173,ptovrint:False,ptlb:Layer2Color,ptin:_Layer2Color,varname:node_8472,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.4973631,c3:0.3823529,c4:1;n:type:ShaderForge.SFN_TexCoord,id:5482,x:30274,y:32812,varname:node_5482,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7517,x:30464,y:32812,varname:node_7517,prsc:2,spu:0.04,spv:0.03|UVIN-5482-UVOUT;n:type:ShaderForge.SFN_Add,id:7628,x:30735,y:32698,varname:node_7628,prsc:2|A-4876-OUT,B-7517-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:8015,x:30894,y:32523,ptovrint:False,ptlb:Layer2Texture,ptin:_Layer2Texture,varname:node_8015,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3945,x:31147,y:32599,varname:node_3945,prsc:2,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False|UVIN-7628-OUT,TEX-8015-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5195,x:30776,y:31739,ptovrint:False,ptlb:Layer1Texture,ptin:_Layer1Texture,varname:node_5195,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:41d08f37049fe4539be095201be35d03,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3801,x:31979,y:31618,varname:node_3801,prsc:2|A-5765-RGB,B-9843-OUT;n:type:ShaderForge.SFN_Color,id:5765,x:31724,y:31480,ptovrint:False,ptlb:ReflectionColor,ptin:_ReflectionColor,varname:node_5765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:490,x:29310,y:33234,varname:node_490,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7747,x:29492,y:33234,varname:node_7747,prsc:2,spu:-0.02,spv:-0.05|UVIN-490-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1235,x:29664,y:33234,ptovrint:False,ptlb:WaveText,ptin:_WaveText,varname:node_1235,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6e6cba53deb4f4e41a81667b73a1ca42,ntxv:0,isnm:False|UVIN-7747-UVOUT;n:type:ShaderForge.SFN_Multiply,id:219,x:30555,y:33261,varname:node_219,prsc:2|A-2459-RGB,B-3915-OUT,C-2637-OUT;n:type:ShaderForge.SFN_Color,id:2459,x:30337,y:33017,ptovrint:False,ptlb:WaveColor,ptin:_WaveColor,varname:node_2459,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:2637,x:30099,y:33602,ptovrint:False,ptlb:WavePower,ptin:_WavePower,varname:node_2637,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.471519,max:10;n:type:ShaderForge.SFN_If,id:3915,x:30164,y:33165,varname:node_3915,prsc:2|A-7373-OUT,B-7866-OUT,GT-7182-OUT,EQ-7866-OUT,LT-7866-OUT;n:type:ShaderForge.SFN_Add,id:7866,x:29899,y:33110,varname:node_7866,prsc:2|A-2369-OUT,B-1235-R;n:type:ShaderForge.SFN_Tex2d,id:2708,x:29305,y:32964,ptovrint:False,ptlb:WaveNoise,ptin:_WaveNoise,varname:node_2708,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cfb478ea62d034c43a0c3ea6175d0388,ntxv:0,isnm:False|UVIN-1581-UVOUT;n:type:ShaderForge.SFN_Slider,id:7373,x:29768,y:32941,ptovrint:False,ptlb:WaveSize,ptin:_WaveSize,varname:node_7373,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6992365,max:1;n:type:ShaderForge.SFN_RemapRange,id:2369,x:29460,y:32964,varname:node_2369,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.2|IN-2708-R;n:type:ShaderForge.SFN_TexCoord,id:5188,x:28900,y:32964,varname:node_5188,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:1581,x:29108,y:32964,varname:node_1581,prsc:2,spu:0,spv:0.05|UVIN-5188-UVOUT;n:type:ShaderForge.SFN_Vector4,id:7182,x:30164,y:33296,varname:node_7182,prsc:2,v1:0,v2:0,v3:0,v4:1;n:type:ShaderForge.SFN_Color,id:5773,x:32347,y:32807,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:node_5773,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3294118,c2:0.8313726,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:274,x:32153,y:33376,varname:node_274,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:1453,x:32316,y:33376,varname:node_1453,prsc:2,spu:0.1,spv:0.1|UVIN-274-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7046,x:32485,y:33376,ptovrint:False,ptlb:RefractionNoise,ptin:_RefractionNoise,varname:node_7046,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1453-UVOUT;n:type:ShaderForge.SFN_Slider,id:1017,x:32328,y:33619,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_1017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9104443,max:1;n:type:ShaderForge.SFN_Multiply,id:2220,x:32947,y:33332,varname:node_2220,prsc:2|A-4257-OUT,B-4131-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4257,x:32699,y:33332,varname:node_4257,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7046-RGB;n:type:ShaderForge.SFN_Slider,id:7817,x:32691,y:33129,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_7817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:8661,x:32485,y:33716,varname:node_8661,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:4131,x:32661,y:33619,varname:node_4131,prsc:2|A-1017-OUT,B-8661-OUT;proporder:5195-5765-9261-8559-8015-2223-6797-8472-1235-2459-2637-2708-7373-5773-7046-1017-7817;pass:END;sub:END;*/

Shader "Shader Forge/GoPikachuWater3D" {
    Properties {
        _Layer1Texture ("Layer1Texture", 2D) = "white" {}
        _ReflectionColor ("ReflectionColor", Color) = (1,1,1,1)
        _ReflectionPower ("ReflectionPower", Range(0, 1)) = 0.07189525
        _BaseBrightness ("BaseBrightness", Range(0, 10)) = 1
        _Layer2Texture ("Layer2Texture", 2D) = "white" {}
        _Layer2Noise ("Layer2Noise", 2D) = "white" {}
        _Layer2Brightness ("Layer2Brightness", Range(0, 2)) = 0.2791393
        _Layer2Color ("Layer2Color", Color) = (1,0.4973631,0.3823529,1)
        _WaveText ("WaveText", 2D) = "white" {}
        _WaveColor ("WaveColor", Color) = (1,1,1,1)
        _WavePower ("WavePower", Range(0, 10)) = 4.471519
        _WaveNoise ("WaveNoise", 2D) = "white" {}
        _WaveSize ("WaveSize", Range(0, 1)) = 0.6992365
        _BaseColor ("BaseColor", Color) = (0.3294118,0.8313726,1,1)
        _RefractionNoise ("RefractionNoise", 2D) = "white" {}
        _Distortion ("Distortion", Range(0, 1)) = 0.9104443
        _Opacity ("Opacity", Range(0, 1)) = 1
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
            uniform float _ReflectionPower;
            uniform float _BaseBrightness;
            uniform sampler2D _Layer2Noise; uniform float4 _Layer2Noise_ST;
            uniform float _Layer2Brightness;
            uniform float4 _Layer2Color;
            uniform sampler2D _Layer2Texture; uniform float4 _Layer2Texture_ST;
            uniform sampler2D _Layer1Texture; uniform float4 _Layer1Texture_ST;
            uniform float4 _ReflectionColor;
            uniform sampler2D _WaveText; uniform float4 _WaveText_ST;
            uniform float4 _WaveColor;
            uniform float _WavePower;
            uniform sampler2D _WaveNoise; uniform float4 _WaveNoise_ST;
            uniform float _WaveSize;
            uniform float4 _BaseColor;
            uniform sampler2D _RefractionNoise; uniform float4 _RefractionNoise_ST;
            uniform float _Distortion;
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float4 node_2940 = _Time + _TimeEditor;
                float2 node_1453 = (i.uv0+node_2940.g*float2(0.1,0.1));
                float4 _RefractionNoise_var = tex2D(_RefractionNoise,TRANSFORM_TEX(node_1453, _RefractionNoise));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_RefractionNoise_var.rgb.rg*(_Distortion*0.1));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float2 node_9805 = (i.uv0+node_2940.g*float2(0.01,0.01));
                float4 node_5032 = tex2D(_Layer1Texture,TRANSFORM_TEX(node_9805, _Layer1Texture));
                float2 node_2159 = (i.uv0+node_2940.g*float2(-0.01,-0.005));
                float4 _node_5032_copy = tex2D(_Layer1Texture,TRANSFORM_TEX(node_2159, _Layer1Texture));
                float2 node_15 = (i.uv0+node_2940.g*float2(0,0));
                float4 _Layer2Noise_var = tex2D(_Layer2Noise,TRANSFORM_TEX(node_15, _Layer2Noise));
                float node_4876 = (_Layer2Noise_var.r*0.05+0.0);
                float2 node_1449 = (node_4876+(i.uv0+node_2940.g*float2(-0.02,-0.02)));
                float4 node_4163 = tex2D(_Layer2Texture,TRANSFORM_TEX(node_1449, _Layer2Texture));
                float2 node_7628 = (node_4876+(i.uv0+node_2940.g*float2(0.04,0.03)));
                float4 node_3945 = tex2D(_Layer2Texture,TRANSFORM_TEX(node_7628, _Layer2Texture));
                float2 node_1581 = (i.uv0+node_2940.g*float2(0,0.05));
                float4 _WaveNoise_var = tex2D(_WaveNoise,TRANSFORM_TEX(node_1581, _WaveNoise));
                float2 node_7747 = (i.uv0+node_2940.g*float2(-0.02,-0.05));
                float4 _WaveText_var = tex2D(_WaveText,TRANSFORM_TEX(node_7747, _WaveText));
                float node_7866 = ((_WaveNoise_var.r*0.2+0.0)+_WaveText_var.r);
                float node_3915_if_leA = step(_WaveSize,node_7866);
                float node_3915_if_leB = step(node_7866,_WaveSize);
                float3 emissive = ((_ReflectionColor.rgb*step(_ReflectionPower,(node_5032.r*_node_5032_copy.r)))+(_Layer2Color.rgb*_Layer2Brightness*node_4163.r*node_3945.r)+(_WaveColor.rgb*lerp((node_3915_if_leA*node_7866)+(node_3915_if_leB*float4(0,0,0,1)),node_7866,node_3915_if_leA*node_3915_if_leB)*_WavePower)+(_BaseColor.rgb*_BaseBrightness)).rgb;
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,_Opacity),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
