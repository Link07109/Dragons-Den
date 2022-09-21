// display_set_gui_size(272, 157)

shouldDraw = true

// if room == rm_win || room == rm_credits
	// shouldDraw = false
	
if !shouldDraw
	return

if instance_exists(obj_hero) {
	for (var i = 0; i < obj_hero.hp; i++) {
		draw_sprite_ext(spr_heart, 0, (64 + 64 + 32 * i), 64, 0.75, 0.75, 0, -1, 1)
	}
	
	// mana bar
	draw_healthbar(49 + 64, 100, 250, 116, 100, c_black, c_aqua, c_aqua, 0, true, true);
	
	// lives
	draw_sprite_ext(spr_hero_lives, num_lives_left, 64, 64 + 32, 2.5, 2.5, 0, -1, 1)
	
	draw_sprite_ext(object_get_sprite(obj_hero.cur_spell), 0, 48 + 64, 150, 1, 1, 0, -1, 1)
	
	// if interaction { // show text box
		// draw_sprite_ext(spr_textbox, 0, 16, 32, 1, 1, 0, -1, 1)
	// }
}