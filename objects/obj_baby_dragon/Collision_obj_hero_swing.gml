hp -= other.damage

if hp <= 0 {
	instance_destroy()
	audio_play_sound(snd_baby_dragon_death, 0, false)
}