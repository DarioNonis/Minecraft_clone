#version 130
precision mediump float;

attribute vec3 a_position;

varying vec3 v_position;
varying float v_height;

uniform mat4 u_model;
uniform mat4 u_mvp;

void main()
{
	v_position = vec3(u_model * vec4(a_position, 1.));
	v_height = a_position.y;

	gl_Position = u_mvp * vec4(a_position, 1.);
}
