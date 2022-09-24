/// @description same type of thing as chest, interact to make it do something

if keyboard_check_pressed(ord("F")) && !other.is_active {
	// set the checkpoint to active
	other.is_active = true
	audio_play_sound(snd_checkpoint_activate, 0, false)
	mana = 100
	hp = max_hp
	// set this as respawn point
}