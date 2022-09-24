other.sprite_index = spr_fire_blast
other.x += 26 * other.dir

hp -= 1

if hp <= 0 {
	instance_destroy()
	audio_play_sound(snd_baby_dragon_death, 0, false)
}