if surface_exists(surf) {
	surface_set_target(surf)
	
	draw_set_color(c_black)
	
	if room == rm_top
		draw_set_alpha(0.4)
	else
		draw_set_alpha(0.7)
	draw_rectangle(0, 0, room_width, room_height, false);
	
	gpu_set_blendmode(bm_subtract)
	draw_set_color(c_white)
	
	//if room == rm_bottom {
		with (obj_hero) {
			draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 128 + random_range(-1, 1), false)
		}
	//}
	
	with (obj_torch) {
		draw_circle(x + random_range(-1, 1), y - 8 + random_range(-1, 1), sprite_width + random_range(-1, 1), false)
	}
	
	gpu_set_blendmode(bm_normal)
	draw_set_alpha(1)
	surface_reset_target()
} else {
	surf = surface_create(room_width, room_height)
	surface_set_target(surf)
	draw_clear_alpha(c_black, 0)
	surface_reset_target()
}