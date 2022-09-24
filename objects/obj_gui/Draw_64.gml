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
	draw_healthbar(49 + 64, 100 - 16, 250, 116 - 16, obj_hero.mana, c_red, c_aqua, c_aqua, 0, true, true);
	
	// lives
	draw_sprite_ext(spr_hero_lives, num_lives_left - 1, 64, 64 + 32, 2.5, 2.5, 0, -1, 1)
	
	// fire spell icon
	// object_get_sprite(obj_hero.cur_spell)
	draw_sprite_ext(spr_fire_icon, 0, 48 + 64 + 16, 150 - 24, 1, 1, 0, -1, 1)
}