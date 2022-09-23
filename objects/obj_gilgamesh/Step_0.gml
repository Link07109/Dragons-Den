/// @description Custom AI for Gilgamesh

// how far away gilgamesh is from the hero
dist_hero = distance_to_object(obj_hero)

// once dialogue is over
if cur_state == "Dialogue" {
	if keyboard_check_pressed(ord("F")) {
		// make textbox disappear
		cur_state = states[1]
	}
}

// walk around
if cur_state == "Walk" {
	sprite_index = spr_gilgamesh_walk
	
	if dist_hero >= 400 {
		cur_state = states[2] // random_range(2, 3)
	} else {
		cur_state = states[3]
	}
}

// slam attack
if cur_state == "Slam" {
	sprite_index = spr_gilgamesh_slam
}

// wind blast attack
if cur_state == "Wind" {
	sprite_index = spr_gilgamesh_wind_blast
}