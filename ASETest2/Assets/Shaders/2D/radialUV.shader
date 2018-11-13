// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34259,y:32914,varname:node_3138,prsc:2|emission-6613-RGB,alpha-6613-A;n:type:ShaderForge.SFN_TexCoord,id:7656,x:31736,y:32671,varname:node_7656,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:5427,x:32374,y:32588,varname:node_5427,prsc:2|A-8592-OUT,B-5658-OUT;n:type:ShaderForge.SFN_Vector1,id:8039,x:31737,y:32924,varname:node_8039,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:4741,x:31997,y:32778,varname:node_4741,prsc:2|A-8592-OUT,B-8039-OUT;n:type:ShaderForge.SFN_Divide,id:5658,x:32189,y:32778,varname:node_5658,prsc:2|A-4741-OUT,B-4840-OUT;n:type:ShaderForge.SFN_Slider,id:9249,x:32216,y:33023,ptovrint:False,ptlb:size,ptin:_size,varname:node_9249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3667013,max:1;n:type:ShaderForge.SFN_Lerp,id:3311,x:32601,y:32776,varname:node_3311,prsc:2|A-5427-OUT,B-8039-OUT,T-4840-OUT;n:type:ShaderForge.SFN_Clamp01,id:8601,x:32780,y:32776,varname:node_8601,prsc:2|IN-3311-OUT;n:type:ShaderForge.SFN_Tex2d,id:2168,x:33054,y:32660,ptovrint:False,ptlb:WaveTexture,ptin:_WaveTexture,varname:node_2168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:32346db182d2947f6bffe75b4c1816b1,ntxv:2,isnm:False|UVIN-8601-OUT;n:type:ShaderForge.SFN_Tex2d,id:4000,x:32851,y:31951,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_4000,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5798ded558355430c8a9b13ee12a847c,ntxv:0,isnm:False|UVIN-1415-OUT;n:type:ShaderForge.SFN_Color,id:6855,x:32851,y:32167,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_6855,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03448272,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:3919,x:33088,y:32091,varname:node_3919,prsc:2|A-4000-RGB,B-6855-RGB;n:type:ShaderForge.SFN_Multiply,id:2038,x:33371,y:32336,varname:node_2038,prsc:2|A-3919-OUT,B-2168-R;n:type:ShaderForge.SFN_ComponentMask,id:9805,x:33551,y:32315,varname:node_9805,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2038-OUT;n:type:ShaderForge.SFN_TexCoord,id:7166,x:32208,y:31957,varname:node_7166,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1415,x:32424,y:32023,varname:node_1415,prsc:2|A-7166-UVOUT,B-7752-OUT;n:type:ShaderForge.SFN_Slider,id:7752,x:32051,y:32161,ptovrint:False,ptlb:UVValue,ptin:_UVValue,varname:node_7752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_TexCoord,id:2447,x:31528,y:33383,varname:node_2447,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:6104,x:31696,y:33383,varname:node_6104,prsc:2,spu:0.03,spv:0.03|UVIN-2447-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1035,x:32075,y:33383,ptovrint:False,ptlb:node_1035,ptin:_node_1035,varname:node_1035,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cd460ee4ac5c1e746b7a734cc7cc64dd,ntxv:0,isnm:False|UVIN-6475-OUT;n:type:ShaderForge.SFN_TexCoord,id:470,x:32075,y:33594,varname:node_470,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:4974,x:32256,y:33383,varname:node_4974,prsc:2,frmn:0,frmx:1,tomn:-0.01,tomx:0.01|IN-1035-B;n:type:ShaderForge.SFN_Add,id:8592,x:32476,y:33383,varname:node_8592,prsc:2|A-4974-OUT,B-470-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5936,x:32689,y:33383,ptovrint:False,ptlb:node_5936,ptin:_node_5936,varname:node_5936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:32346db182d2947f6bffe75b4c1816b1,ntxv:0,isnm:False|UVIN-8592-OUT;n:type:ShaderForge.SFN_Slider,id:8501,x:31408,y:33621,ptovrint:False,ptlb:node_8501,ptin:_node_8501,varname:node_8501,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6241319,max:4;n:type:ShaderForge.SFN_Multiply,id:6475,x:31892,y:33383,varname:node_6475,prsc:2|A-6104-UVOUT,B-8501-OUT;n:type:ShaderForge.SFN_TexCoord,id:8837,x:31445,y:34011,varname:node_8837,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:5413,x:31615,y:34011,varname:node_5413,prsc:2,spu:0,spv:0.05|UVIN-8837-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4402,x:31976,y:34011,ptovrint:False,ptlb:node_4402,ptin:_node_4402,varname:node_4402,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ffda96f6603934e678396c3adbb3d9fd,ntxv:0,isnm:False|UVIN-5547-OUT;n:type:ShaderForge.SFN_Add,id:961,x:33217,y:33447,varname:node_961,prsc:2|A-5936-RGB,B-9822-OUT;n:type:ShaderForge.SFN_Multiply,id:9822,x:32510,y:33924,varname:node_9822,prsc:2|A-2060-OUT,B-4402-A;n:type:ShaderForge.SFN_Tex2d,id:1013,x:31976,y:34215,ptovrint:False,ptlb:node_1013,ptin:_node_1013,varname:node_1013,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:169c5c2ddb5de4cbe9b2bd4e1a603767,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2060,x:32267,y:34147,varname:node_2060,prsc:2|A-4402-RGB,B-1013-RGB;n:type:ShaderForge.SFN_Slider,id:793,x:31426,y:34229,ptovrint:False,ptlb:node_793,ptin:_node_793,varname:node_793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:4;n:type:ShaderForge.SFN_Multiply,id:5547,x:31786,y:34011,varname:node_5547,prsc:2|A-5413-UVOUT,B-793-OUT;n:type:ShaderForge.SFN_Time,id:7684,x:31224,y:33115,varname:node_7684,prsc:2;n:type:ShaderForge.SFN_Sin,id:1649,x:31563,y:33046,varname:node_1649,prsc:2|IN-4762-OUT;n:type:ShaderForge.SFN_Slider,id:1043,x:31067,y:33046,ptovrint:False,ptlb:node_1043,ptin:_node_1043,varname:node_1043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:5;n:type:ShaderForge.SFN_Multiply,id:4762,x:31401,y:33046,varname:node_4762,prsc:2|A-1043-OUT,B-7684-T;n:type:ShaderForge.SFN_RemapRange,id:4840,x:31854,y:33025,varname:node_4840,prsc:2,frmn:-1,frmx:1,tomn:0.5,tomx:0.52|IN-1649-OUT;n:type:ShaderForge.SFN_Tex2d,id:6613,x:33208,y:32966,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_6613,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:32346db182d2947f6bffe75b4c1816b1,ntxv:0,isnm:False|UVIN-8601-OUT;proporder:9249-2168-4000-6855-7752-1035-5936-8501-4402-1013-793-1043-6613;pass:END;sub:END;*/

Shader "Shader Forge/RadialUV" {
    Properties {
        _size ("size", Range(0, 1)) = 0.3667013
        _WaveTexture ("WaveTexture", 2D) = "black" {}
        _MainTexture ("MainTexture", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (0.03448272,1,0,1)
        _UVValue ("UVValue", Range(0, 5)) = 2
        _node_1035 ("node_1035", 2D) = "white" {}
        _node_5936 ("node_5936", 2D) = "white" {}
        _node_8501 ("node_8501", Range(0, 4)) = 0.6241319
        _node_4402 ("node_4402", 2D) = "white" {}
        _node_1013 ("node_1013", 2D) = "white" {}
        _node_793 ("node_793", Range(0, 4)) = 1
        _node_1043 ("node_1043", Range(0, 5)) = 0.5
        _MainTex ("MainTex", 2D) = "white" {}
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_1035; uniform float4 _node_1035_ST;
            uniform float _node_8501;
            uniform float _node_1043;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
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
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9616 = _Time + _TimeEditor;
                float2 node_6475 = ((i.uv0+node_9616.g*float2(0.03,0.03))*_node_8501);
                float4 _node_1035_var = tex2D(_node_1035,TRANSFORM_TEX(node_6475, _node_1035));
                float2 node_8592 = ((_node_1035_var.b*0.02+-0.01)+i.uv0);
                float node_8039 = 0.5;
                float4 node_7684 = _Time + _TimeEditor;
                float node_4840 = (sin((_node_1043*node_7684.g))*0.00999999+0.51);
                float2 node_8601 = saturate(lerp((node_8592+((node_8592-node_8039)/node_4840)),float2(node_8039,node_8039),node_4840));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_8601, _MainTex));
                float3 emissive = _MainTex_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,_MainTex_var.a);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
