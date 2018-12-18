// Simplified SDF shader:
// - No Shading Option (bevel / bump / env map)
// - No Glow Option
// - Softness is applied on both side of the outline

Shader "TextMeshPro/Mobile/Distance Field2" {

Properties {
    _FaceColor          ("Face Color", Color) = (1,1,1,1)
    _FaceDilate         ("Face Dilate", Range(-1,1)) = 0

    _OutlineColor       ("Outline Color", Color) = (0,0,0,1)
    _OutlineWidth       ("Outline Thickness", Range(0,1)) = 0
    _OutlineSoftness    ("Outline Softness", Range(0,1)) = 0

    _OutlineColor2      ("Outline Color2", Color) = (0,0,0,1)
    _OutlineWidth2      ("Outline Thickness2", Range(0,10)) = 0

    _UnderlayColor      ("Border Color", Color) = (0,0,0,.5)
    _UnderlayOffsetX    ("Border OffsetX", Range(-5,5)) = 0
    _UnderlayOffsetY    ("Border OffsetY", Range(-5,5)) = 0
    _UnderlayDilate     ("Border Dilate", Range(-1,1)) = 0
    _UnderlaySoftness   ("Border Softness", Range(0,1)) = 0

    _WeightNormal       ("Weight Normal", float) = 0
    _WeightBold         ("Weight Bold", float) = .5

    _ShaderFlags        ("Flags", float) = 0
    _ScaleRatioA        ("Scale RatioA", float) = 1
    _ScaleRatioB        ("Scale RatioB", float) = 1
    _ScaleRatioC        ("Scale RatioC", float) = 1

    _MainTex            ("Font Atlas", 2D) = "white" {}
    _TextureWidth       ("Texture Width", float) = 512
    _TextureHeight      ("Texture Height", float) = 512
    _GradientScale      ("Gradient Scale", float) = 5
    _ScaleX             ("Scale X", float) = 1
    _ScaleY             ("Scale Y", float) = 1
    _PerspectiveFilter  ("Perspective Correction", Range(0, 1)) = 0.875

    _VertexOffsetX      ("Vertex OffsetX", float) = 0
    _VertexOffsetY      ("Vertex OffsetY", float) = 0

    _ClipRect           ("Clip Rect", vector) = (-32767, -32767, 32767, 32767)
    _MaskSoftnessX      ("Mask SoftnessX", float) = 0
    _MaskSoftnessY      ("Mask SoftnessY", float) = 0
    
    _StencilComp        ("Stencil Comparison", Float) = 8
    _Stencil            ("Stencil ID", Float) = 0
    _StencilOp          ("Stencil Operation", Float) = 0
    _StencilWriteMask   ("Stencil Write Mask", Float) = 255
    _StencilReadMask    ("Stencil Read Mask", Float) = 255
    
    _ColorMask          ("Color Mask", Float) = 15
}

SubShader {
    Tags 
    {
        "Queue"="Transparent"
        "IgnoreProjector"="True"
        "RenderType"="Transparent"
    }


    Stencil
    {
        Ref [_Stencil]
        Comp [_StencilComp]
        Pass [_StencilOp] 
        ReadMask [_StencilReadMask]
        WriteMask [_StencilWriteMask]
    }

    Cull [_CullMode]
    ZWrite Off
    Lighting Off
    Fog { Mode Off }
    ZTest [unity_GUIZTestMode]
    Blend One OneMinusSrcAlpha
    ColorMask [_ColorMask]

    Pass {
        CGPROGRAM
        #pragma vertex VertShader
        #pragma fragment PixShader
        #pragma shader_feature __ OUTLINE_ON
        #pragma shader_feature __ UNDERLAY_ON UNDERLAY_INNER

        #pragma multi_compile __ UNITY_UI_CLIP_RECT
        #pragma multi_compile __ UNITY_UI_ALPHACLIP

        #include "UnityCG.cginc"
        #include "UnityUI.cginc"
        #include "TMPro_Properties.cginc"

        struct vertex_t {
            float4  vertex          : POSITION;
            float3  normal          : NORMAL;
            fixed4  color           : COLOR;
            float2  texcoord0       : TEXCOORD0;
            float2  texcoord1       : TEXCOORD1;
        };

        struct pixel_t {
            float4  vertex          : SV_POSITION;
            fixed4  faceColor       : COLOR;
            fixed4  outlineColor    : COLOR1;
            fixed4  outlineColor2   : COLOR2;
            float4  texcoord0       : TEXCOORD0;            // Texture UV, Mask UV
            half4   param           : TEXCOORD1;            // Scale(x), BiasIn(y), BiasOut(z), Bias(w)
            half4   mask            : TEXCOORD2;            // Position in clip space(xy), Softness(zw)
        #if (UNDERLAY_ON | UNDERLAY_INNER)
            float4  texcoord1       : TEXCOORD3;            // Texture UV, alpha, reserved
            half2   underlayParam   : TEXCOORD4;            // Scale(x), Bias(y)
        #endif

        };

         /*
        sampler2D _MainTex;
            float2 _MainTex_TexelSize;
            float4 _Color;
            float _OutlineDist;
           */

           float4 _OutlineColor2;
           float  _OutlineWidth2;
           float2 _MainTex_TexelSize;
           float2 Disc2[16] =
                {
                    float2(0, 1),
                    float2(0.3826835, 0.9238796),
                    float2(0.7071069, 0.7071068),
                    float2(0.9238796, 0.3826834),
                    float2(1, 0),
                    float2(0.9238795, -0.3826835),
                    float2(0.7071068, -0.7071068),
                    float2(0.3826833, -0.9238796),
                    float2(0, -1),
                    float2(-0.3826835, -0.9238796),
                    float2(-0.7071069, -0.7071067),
                    float2(-0.9238797, -0.3826832),
                    float2(-1, 0),
                    float2(-0.9238795, 0.3826835),
                    float2(-0.7071066, 0.707107),
                    float2(-0.3826834, 0.9238796)
                };

        float Outline(float2 uv, float size)
            {
                float2 Disc[16] =
                {
                    float2(0, 1),
                    float2(0.3826835, 0.9238796),
                    float2(0.7071069, 0.7071068),
                    float2(0.9238796, 0.3826834),
                    float2(1, 0),
                    float2(0.9238795, -0.3826835),
                    float2(0.7071068, -0.7071068),
                    float2(0.3826833, -0.9238796),
                    float2(0, -1),
                    float2(-0.3826835, -0.9238796),
                    float2(-0.7071069, -0.7071067),
                    float2(-0.9238797, -0.3826832),
                    float2(-1, 0),
                    float2(-0.9238795, 0.3826835),
                    float2(-0.7071066, 0.707107),
                    float2(-0.3826834, 0.9238796)
                };

                float maxAlpha = 0;

                for (int d = 0; d < 16; d++)
                {
                    float sampleAlpha = tex2D(_MainTex, uv + Disc[d] * _MainTex_TexelSize * size).a;
                    maxAlpha = max(sampleAlpha, maxAlpha);
                }

                return maxAlpha;
            }

           


        pixel_t VertShader(vertex_t input)
        {
            float bold = step(input.texcoord1.y, 0);

            float4 vert = input.vertex;
            vert.x += _VertexOffsetX;
            vert.y += _VertexOffsetY;
            float4 vPosition = UnityObjectToClipPos(vert);

            float2 pixelSize = vPosition.w;
            pixelSize /= float2(_ScaleX, _ScaleY) * abs(mul((float2x2)UNITY_MATRIX_P, _ScreenParams.xy));
            
            float scale = rsqrt(dot(pixelSize, pixelSize));
            scale *= abs(input.texcoord1.y) * _GradientScale * 1.5;
            if(UNITY_MATRIX_P[3][3] == 0) scale = lerp(abs(scale) * (1 - _PerspectiveFilter), scale, abs(dot(UnityObjectToWorldNormal(input.normal.xyz), normalize(WorldSpaceViewDir(vert)))));

            float weight = lerp(_WeightNormal, _WeightBold, bold) / 4.0;
            weight = (weight + _FaceDilate) * _ScaleRatioA * 0.5;

            float layerScale = scale;

            scale /= 1 + (_OutlineSoftness * _ScaleRatioA * scale);
            float bias = (0.5 - weight) * scale - 0.5;
            float outline = _OutlineWidth * _ScaleRatioA * 0.5 * scale;
            //outline += sin(_Time.y * 3 + vPosition.x * 100) * 0.1 * scale;

            float opacity = input.color.a;
        #if (UNDERLAY_ON | UNDERLAY_INNER)
            opacity = 1.0;
        #endif


            fixed4 faceColor = fixed4(input.color.rgb, opacity) * _FaceColor;
            faceColor.rgb *= faceColor.a;

            fixed4 outlineColor = _OutlineColor;
            outlineColor.a *= opacity;
            outlineColor.rgb *= outlineColor.a;
            outlineColor = lerp(faceColor, outlineColor, sqrt(min(1.0, (outline * 2))));

            fixed4 outlineColor2 = _OutlineColor;

        #if (UNDERLAY_ON | UNDERLAY_INNER)
            layerScale /= 1 + ((_UnderlaySoftness * _ScaleRatioC) * layerScale);
            float layerBias = (.5 - weight) * layerScale - .5 - ((_UnderlayDilate * _ScaleRatioC) * .5 * layerScale);

            float x = -(_UnderlayOffsetX * _ScaleRatioC) * _GradientScale / _TextureWidth;
            float y = -(_UnderlayOffsetY * _ScaleRatioC) * _GradientScale / _TextureHeight;
            float2 layerOffset = float2(x, y);
        #endif


            // Generate UV for the Masking Texture
            float4 clampedRect = clamp(_ClipRect, -2e10, 2e10);
            float2 maskUV = (vert.xy - clampedRect.xy) / (clampedRect.zw - clampedRect.xy);

            // Structure for pixel shader
            pixel_t output = {
                vPosition,
                faceColor,
                outlineColor,
                outlineColor2,
                float4(input.texcoord0.x, input.texcoord0.y, maskUV.x, maskUV.y),
                half4(scale, bias - outline, bias, bias),
                half4(vert.xy * 2 - clampedRect.xy - clampedRect.zw, 0.25 / (0.25 * half2(_MaskSoftnessX, _MaskSoftnessY) + pixelSize.xy)),
            #if (UNDERLAY_ON | UNDERLAY_INNER)
                float4(input.texcoord0 + layerOffset, input.color.a, 0),
                half2(layerScale, layerBias),
            #endif

            };

            return output;
        }

        fixed4 pixColor(pixel_t input, float2 offset)
        {
            half d = tex2D(_MainTex, input.texcoord0.xy + offset).a * input.param.x;
            half4 c = input.faceColor * saturate(d - input.param.w);

        #ifdef OUTLINE_ON
            c = lerp(input.outlineColor, input.faceColor, saturate(d - input.param.z));
            c *= saturate(d - input.param.y);
        #endif

        #if UNDERLAY_ON
            d = tex2D(_MainTex, input.texcoord1.xy + offset).a * input.underlayParam.x;
            c += float4(_UnderlayColor.rgb * _UnderlayColor.a, _UnderlayColor.a) * saturate(d - input.underlayParam.y) * (1 - c.a);
        #endif

        #if UNDERLAY_INNER
            half sd = saturate(d - input.param.z);
            d = tex2D(_MainTex, input.texcoord1.xy + offset).a * input.underlayParam.x;
            c += float4(_UnderlayColor.rgb * _UnderlayColor.a, _UnderlayColor.a) * (1 - saturate(d - input.underlayParam.y)) * sd * (1 - c.a);
        #endif

        #if UNITY_VERSION < 530
            // Unity 5.2 2D Rect Mask Support
            if (_UseClipRect)
            {
                half2 m = saturate((_ClipRect.zw - _ClipRect.xy - abs(input.mask.xy)) * input.mask.zw);
                c *= m.x * m.y;
            }
        #else
            // Alternative implementation to UnityGet2DClipping with support for softness.
            half2 m = saturate((_ClipRect.zw - _ClipRect.xy - abs(input.mask.xy)) * input.mask.zw);
            c *= m.x * m.y;
        #endif


        #if (UNDERLAY_ON | UNDERLAY_INNER)
            c *= input.texcoord1.z;
        #endif

            return c;
        }


        fixed4 OutlinePass(fixed4 raw_c, pixel_t input, float size)
            {
            float2 Disc1[16] =
                {
                    float2(0, 1),
                    float2(0.3826835, 0.9238796),
                    float2(0.7071069, 0.7071068),
                    float2(0.9238796, 0.3826834),
                    float2(1, 0),
                    float2(0.9238795, -0.3826835),
                    float2(0.7071068, -0.7071068),
                    float2(0.3826833, -0.9238796),
                    float2(0, -1),
                    float2(-0.3826835, -0.9238796),
                    float2(-0.7071069, -0.7071067),
                    float2(-0.9238797, -0.3826832),
                    float2(-1, 0),
                    float2(-0.9238795, 0.3826835),
                    float2(-0.7071066, 0.707107),
                    float2(-0.3826834, 0.9238796)
                };
                fixed4 new_c = raw_c;
                if (new_c.a == 0)
                    return new_c;


                if (size == 0)
                    return new_c;


                int up = 0;
                for (int d = 0; d < 100; d++)
                {
                    fixed4 c = pixColor(input, float2(0, d) * _MainTex_TexelSize);
                    if (c.a > 0)
                    {
                        up = 1;
                        break;
                    }
                }

                int down = 0;
                for (int d = 0; d < 100; d++)
                {
                    fixed4 c = pixColor(input, float2(0, d) * _MainTex_TexelSize);
                    if (c.a > 0)
                    {
                        down = 1;
                        break;
                    }
                }

                //if(up ==1 && down ==1)
                //return new_c;

                float aa = 0;
                for (int d = 0; d < 16; d++)
                {
                    fixed4 c = pixColor(input, Disc1[d] * _MainTex_TexelSize * size);
                    //fixed4 c = tex2D(_MainTex, input.texcoord0.xy + Disc1[d] * _MainTex_TexelSize * size);

                    aa += c.a;
                    if (c.a == 0)
                    {
                        new_c.rgba = fixed4(1, 1, 1, 1) * _OutlineColor2;
                        break;
                    }
                }

                aa = aa / 16;
                //new_c.rgba = lerp(new_c, _OutlineColor2,  1 - aa);

                //if (new_c.a < 1)
                //    new_c.rgba = fixed4(1, 1, 1, new_c.a) * _OutlineColor2;


                /*
                for (int d = 0; d < 16; d++)
                {
                    if (tex2D(_MainTex, uv + Disc1[d] * _MainTex_TexelSize * size).a < 0.4)
                    {
                        new_c.rgba = fixed4(0, 1, 0, raw_c.a);
                        break;
                    }
                }
                */

                return new_c;
            }


        // PIXEL SHADER
        fixed4 PixShader(pixel_t input) : SV_Target
        {      
            //c.a = max(c.a, (Outline(input.texcoord0, 1)));
            //clip(c.a - 0.01);

            fixed4 c = pixColor(input, float2(0, 0));
            fixed4 cc = OutlinePass(c, input, _OutlineWidth2);

            //half4 newc = OutlinePass(c, input.texcoord0, 1);
            return cc;
        }

        /*
        if(pixelUp.a * pixelDown.a * pixelLeft.a * pixelRight.a == 0)
        {
            c.rgba = fixed4(1, 1, 1, 1) * _OutlineColor;
        }
        */
        ENDCG
    }
}

//CustomEditor "TMPro.EditorUtilities.TMP_SDFShaderGUI"
}
