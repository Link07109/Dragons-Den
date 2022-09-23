/// @description Action Code

if is_actionable {
	
	// TODO: add magic attacks
	if keyboard_check_pressed(ord("E")) {
		if can_shoot && mana >= 25 {
			sprite_index = spr_hero_spell_attack
			mana -= 25
			can_shoot = false
			is_actionable = false
			alarm[1] = 120 // cooldown
			alarm[2] = 32 // when the fireball actually comes out
		}
	}
	
	// TODO: add staff attack
	if keyboard_check_pressed(vk_space) {
		if can_attack {
			sprite_index = spr_hero_attack
			// create attack hitbox
			can_attack = false
			is_actionable = false
		}
	}
	
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
			sprite_index = spr_hero_crouch
			image_index = 2
		} else {
			sprite_index = spr_hero_jump
			image_index = 2
			
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