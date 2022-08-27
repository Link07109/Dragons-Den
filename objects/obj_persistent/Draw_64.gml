// display_set_gui_size(272, 157)

shouldDraw = true

// if room == rm_win || room == rm_credits
	// shouldDraw = false
	
if !shouldDraw
	return

if instance_exists(obj_hero) {
	for (var i = 0; i < obj_hero.hp; i++) {
		draw_sprite(spr_heart, 0, (64 + 40 * i), 64)
	}
	
	// draw_sprite_ext(spr_key, 0, 16, 32, .125, .125, 0, -1, 1)
	// draw_text_ext_transformed(28, 32, string(obj_hero.num_keys), -1, -1, .2, .2, 0)
	
	// draw_sprite_ext(object_get_sprite(obj_hero.weapon), 0, 45, 30, .11, .11, 0, -1, 1)
	
	// if interaction { // show text box
		// draw_sprite_ext(spr_text_1, 0, 16, 32, .125, .125, 0, -1, 1)
	// }
}