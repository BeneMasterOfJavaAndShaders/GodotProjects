shader_type canvas_item;

uniform highp vec2 mouse;

void fragment() {
	vec2 uv = abs(UV-mouse);
	vec2 guv = mod(UV * 13., 1.);
	const float thickness = .08;
	if(guv.x < 1.-thickness && guv.y < 1.-thickness)
	discard;
	vec3 col = vec3(0., 1., 0.);
	COLOR = vec4(col, smoothstep(.15, .11, length(uv)) * .5);
}