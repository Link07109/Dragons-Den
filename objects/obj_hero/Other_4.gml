room_persistent = true

if instance_exists(obj_hero_spawn) {
	x = obj_hero_spawn.x
	y = obj_hero_spawn.y
}

is_actionable = true
can_attack = true
can_shoot = true

if room == rm_boss {
	//is_actionable = false
}

if room == rm_top {
	audio_stop_all()
	audio_play_sound(snd_top, 0, true)
}

if room == rm_bottom {
	audio_stop_all()
	audio_play_sound(snd_bottom, 0, true)
}

if room == rm_win {
	audio_stop_all()
	audio_play_sound(snd_win, 0, false)
}