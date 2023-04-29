#version 430 core

out vec4 color_out;

in vec2 tex_coords;
flat in int m_depth;

uniform sampler2D render_texture;

vec4 post(vec4 c){
    return sin(3.1416*(c-0.5))*0.5 + 0.5;
};


void main()
{   
    vec4 tex = texture(render_texture, tex_coords);    

    color_out = tex;
    //vec4 t1 = tex;
    //
    //vec4 f1 = (vec4(0,0,0,1) * (1-t1)) + t1;
    //
    //color_out =  post(t1 * f1);







    //color_out = vec4(sin(tex.x)*0.5+0.5, 0, cos(tex.x)*0.5+0.5, 1);
    
    //color_out = tex;
    //color_out = vec4(clamp(rc.x,0,1),clamp(rc.y,0,1),clamp(rc.z,0,1),clamp(rc.w,0,1));
    //color_out = log(vec4(1, 1, 1, k) + tex + vec4(1.1,1.1,1.1,1.1));
}
