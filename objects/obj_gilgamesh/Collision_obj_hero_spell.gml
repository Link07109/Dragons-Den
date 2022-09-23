hp -= 2

if !is_dead && hp <= 0 { // dead
	cur_state = states[4]
	sprite_index = spr_gilgamesh_death
	is_dead = true
	y += 6
	audio_stop_all()
}