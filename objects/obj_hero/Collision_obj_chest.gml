/// @description when colliding with hero, prompt comes up to open it, giving you what is inside and then getting destroyed

if keyboard_check_pressed(ord("F")) && !other.has_been_collected {
	audio_play_sound(snd_get_item, 0, false)
	other.has_been_collected = true
	
	if other.item == obj_heart_upgrade { // 5 total exist
		max_hp++
		hp = max_hp
	} else if other.item == obj_lives_upgrade {
		obj_gui.num_lives_left += 1
	} else {
		ds_list_add(items, other.item)
	}
	
	if other.item == obj_talisman // 2 total exist but just 1 for now
		obj_pause_menu.has_talisman = true

	if other.item == obj_scarf {
		has_scarf = true
		scarf_available = true
		obj_pause_menu.has_scarf = true
	}

	instance_destroy(other)
}