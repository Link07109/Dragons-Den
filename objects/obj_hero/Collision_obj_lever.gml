/// @description Lever

if keyboard_check_pressed(ord("F")) {
	// activate
	other.activated = true
	audio_play_sound(snd_lever, 0, false)
}