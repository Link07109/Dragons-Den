// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hero_death() {
	if obj_hero.scarf_available {
		obj_hero.hp = 2
		obj_hero.scarf_available = false // becomes true again at a checkpoint
	} else {
		audio_play_sound(snd_hero_death, 0, false)
		obj_gui.num_lives_left -= 1
		room_persistent = false
		room_restart()
		obj_hero.hp = obj_hero.max_hp
		// instance_destroy() // would be replaced with a death animation and then on the animation end it would get destroyed
		if obj_gui.num_lives_left <= 0 { // game over
			game_restart()
		}
	}
}