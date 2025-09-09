precision highp float;
varying vec2 v_texcoord;
uniform sampler2D tex;
uniform float u_time;

void main() {
    vec4 pixColor = texture2D(tex, v_texcoord);
    gl_FragColor = vec4(pixColor.r,  pixColor.g, u_time, pixColor.a);
}

