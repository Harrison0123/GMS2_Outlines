//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

void main()
{
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;

    float alpha_org = alpha;

    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + pixelW, v_vTexcoord.y)).a); //Offset to the right
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - pixelW, v_vTexcoord.y)).a); //Offset to the left
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + pixelH)).a); //Offset to the bottom
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - pixelH)).a); //Offset to the top

    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor.a = alpha;
    //gl_FragColor.a = abs(alpha-1.0);
    if (alpha_org!=alpha) gl_FragColor.rgb = vec3(0.0, 0.0, 0.0);
}
