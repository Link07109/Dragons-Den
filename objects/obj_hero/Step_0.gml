/// @description Action Code

if is_actionable {
	
	// TODO: add fire attack
	
	// TODO: add staff attack & combo
	
	// TODO: add blocking
	
	// TODO: add interaction to open chests


	// jump
	if is_jumping {
		if (vspeed >= 0) {
			// sprite_index = spr_hero_fall
			// image_index = 1 // 0 is for when starting to jump off ground
		} else {
			// sprite_index = spr_hero_jump
			// image_index = 1 // 0 is for when landed on ground
			
			if !keyboard_check(ord("W"))
				vspeed = vspeed / 2
		}
	} else if !is_jumping {                  
		if (keyboard_check_pressed(ord("W"))) {
			vspeed = jump_height
			// audio_play_sound(snd_jump, 1, false)
		} else {
			sprite_index = spr_hero
		}
	}

	// side to side movement
	if (keyboard_check(ord("A")) && !instance_place(x - move_speed, y, obj_collision)) {
		x -= move_speed
		is_facing_right = false
		// if !is_jumping
			// sprite_index = spr_hero_run
		image_xscale = -xsc
	} else if (keyboard_check(ord("D")) && !instance_place(x + move_speed, y, obj_collision)) {
		x += move_speed
		is_facing_right = true
		// if !is_jumping
			// sprite_index = spr_hero_run
		image_xscale = xsc
	}
	

	// collision checking
	if (instance_place(x, y + 5, obj_collision)) {
		gravity = 0
		is_jumping = false
	} else {
		gravity =  grav
		is_jumping = true
	}

}

vspeed = min(vspeed, 20) // max fall speed