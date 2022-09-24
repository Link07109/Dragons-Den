/// @description Take damage from enemy

if is_vulnerable {
	hp -= other.attack_damage
	audio_sound_set_track_position(snd_hero_hurt, 0.45)
	audio_play_sound(snd_hero_hurt, 0, false)
	alarm[0] = 120 // frames (2 seconds)
	is_vulnerable = false
}

if hp <= 0 { // death
	hero_death()
}