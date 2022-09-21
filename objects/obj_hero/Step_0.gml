/// @description Action Code

if is_actionable {
	
	// TODO: add magic attacks
	if keyboard_check(vk_space) {
		if can_shoot {
			sprite_index = spr_hero_spell_attack
			spell = instance_create_layer(x, y, "Projectiles", cur_spell)
			spell.dir = image_xscale
			can_shoot = false
			alarm[1] = 120
		}
	}
	
	// TODO: add staff attack
	
	// TODO: add blocking
	if keyboard_check(vk_shift) {
		if !instance_exists(obj_shield)
			shield = instance_create_layer(x, y, "Hero", obj_shield)
		shield.x = x
		shield.y = y
	} else {
		if instance_exists(obj_shield)
			instance_destroy(obj_shield)
	}
	

	// jump
	if is_jumping {
		if (vspeed >= 0) {
			// sprite_index = spr_hero_fall
			// image_index = 1 // 0 is for when starting to jump off ground
		} else {
			// sprite_index = spr_hero_jump
			// image_index = 1 // 0 is for when landed on ground
			
			if (!keyboard_check(ord("W")))
				vspeed = vspeed / 2
		}
	} else if !is_jumping {                  
		if (keyboard_check_pressed(ord("W"))) {
			vspeed = jump_height
			// audio_play_sound(snd_jump, 1, false)
		} else {
			// sprite_index = spr_hero
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
	

	// vertical collision checking
	if (instance_place(x, y + 5, obj_collision)) {
		gravity = 0
		is_jumping = false
	} else {
		gravity =  grav
		is_jumping = true
	}

}

vspeed = min(vspeed, 20) // max fall speed