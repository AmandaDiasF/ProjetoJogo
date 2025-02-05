shader_type canvas_item;

uniform float lines = 10;
uniform float threshold: hint_range(0.0, 1.0) = 0.0;
uniform vec4 line_color_a: source_color = vec4(1.0);
uniform	vec4 line_color_b: source_color = vec4(0.,0.,0

void fragment()
{
	vec2 stripe_uv = vec2(UV.x, fract(UV.y*line/2))
	if(stripe_uv.y < 0.5)
	{
		
	}
}
