#version 430 core

out vec4 color_out;

in vec2 tex_coords;
flat in int m_depth;

uniform sampler2D render_texture;

uniform vec3 primary_color;

void main()
{   
    vec4 tex = texture(render_texture, tex_coords);

    vec4 rc = vec4(1,1,1,tex.w);
    
    color_out = vec4(primary_color,1-tex.w);
    
    //color_out = vec4(clamp(rc.x,0,1),clamp(rc.y,0,1),clamp(rc.z,0,1),clamp(rc.w,0,1));
    //color_out = log(vec4(1, 1, 1, k) + tex + vec4(1.1,1.1,1.1,1.1));
}
