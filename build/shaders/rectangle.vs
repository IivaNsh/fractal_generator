#version 430 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTex;

uniform mat4 translate;
uniform mat4 rotate;
uniform mat4 scale;
//uniform mat4 view;

uniform int M_depth;

out vec2 tex_coords;
flat out int m_depth;

void main(){

    gl_Position = translate * rotate * scale * vec4(aPos, 1.0f);

    tex_coords = aTex;

    m_depth = M_depth;
}