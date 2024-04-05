Shader "Custom/EndlessExpanse"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _HorizonColor ("Horizon Color", Color) = (0.9,0.9,0.9,1)
        _HorizonBlendRange ("Horizon Blend Range", Range(0.0, 1.0)) = 0.1
        _HorizonHeight ("Horizon Height", Range(-1.0, 1.0)) = 0.0
    }
    SubShader
    {
        Tags { "Queue"="Background" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            fixed4 _Color;
            fixed4 _HorizonColor;
            float _HorizonBlendRange;
            float _HorizonHeight;

            struct appdata
            {
                float4 vertex : POSITION;
            };

            struct v2f
            {
                float3 screenPos : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.screenPos = o.vertex.xyz / o.vertex.w; // perspective divide to get screen space position
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // Compute the vertical blend based on the screen position
                float blend = smoothstep(_HorizonHeight - _HorizonBlendRange, _HorizonHeight + _HorizonBlendRange, i.screenPos.y);
                fixed4 finalColor = lerp(_HorizonColor, _Color, blend);
                return finalColor;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
