/// @description when colliding with hero, prompt comes up to open it, giving you what is inside and then getting destroyed

if keyboard_check_pressed(ord("F")) {
	ds_list_add(items, other.item)
	
	// if ds_list_find_index(items, other.item) > -1 {
	// 	
	// }
	
	if other.item == obj_talisman
		obj_pause_menu.has_talisman = true

	instance_destroy(other)
}