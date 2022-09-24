if is_vulnerable {
	hp -= other.damage
	audio_play_sound(snd_gilgamesh_hurt, 0, false)
	is_vulnerable = false
	alarm[2] = 60
}

if !is_dead && hp <= 0 { // dead
	cur_state = states[4]
	sprite_index = spr_gilgamesh_death
	is_dead = true
	y += 6
	audio_stop_all()
	audio_play_sound(snd_gilgamesh_death, 0, false)
}