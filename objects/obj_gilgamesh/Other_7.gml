/// @description anim end

if sprite_index == spr_gilgamesh_death {
	instance_destroy()
}

if sprite_index == spr_gilgamesh_slam {
	instance_create_layer(x - 70, y + (sprite_height / 2), "Projectiles", obj_ground_hit)
	audio_play_sound(snd_ground_smash, 0, false)
	can_slam = false
	alarm[1] = 90
}

if sprite_index == spr_gilgamesh_wind_blast {
	instance_create_layer(x - 64, y, "Projectiles", obj_wind_blast)
	audio_play_sound(snd_wind_blast, 0, false)
	can_wind = false
	alarm[0] = 60
}

if sprite_index != spr_gilgamesh {
	sprite_index = spr_gilgamesh_walk
	cur_state = states[1]
}