draw_set_valign(fa_middle)
draw_set_halign(fa_center)
// draw_set_font(fnt_?)

draw_text_transformed(window_w*(2.5/7), window_h/4, "Dragon's Den", text_scale, text_scale, 0)

for (var i = 0; i < array_length(options); i++) {
	var col = color1
	
	if cursor_pos == i
		col = color2
	
	draw_text_transformed_color(window_w*(2.5/7), window_h/3 + (48 * i), options[i], text_scale, text_scale, 0, col, col, col, col, 1)
}