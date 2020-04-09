#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in float alpha;

out float ourAlpha;
void main()
{
    gl_Position = vec4(position, 1.0f);
    ourAlpha = alpha;
}