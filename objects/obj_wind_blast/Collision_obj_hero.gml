sprite_index = spr_wind_blast_impact

if other.is_vulnerable {
	other.hp -= 1
	audio_play_sound(snd_hero_hurt, 0, false)
}

if other.hp <= 0
	hero_death()