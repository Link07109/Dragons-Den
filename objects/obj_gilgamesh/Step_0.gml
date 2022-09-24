/// @description Custom AI for Gilgamesh

// how far away gilgamesh is from the hero
dist_hero = distance_to_object(obj_hero)

// once dialogue is over
if cur_state == "Dialogue" {
	if keyboard_check_pressed(ord("C")) {
		show_dialogue = false
		//obj_hero.is_actionable = true
		
		/// @description Draw dialogue

//if show_dialogue
//	draw_sprite(spr_dialogue, 0, window_get_width()/3, 2* window_get_height()/3 - 128)
		
		cur_state = states[1]
		
		can_wind = true
		can_slam = true
	}
}

// walk around
if cur_state == "Walk" {
	sprite_index = spr_gilgamesh_walk
	
	if dist_hero >= 350 {
		cur_state = states[2] // random_range(2, 3)
	} else {
		cur_state = states[3]
	}
}

// slam attack
if cur_state == "Slam" && can_slam {
	sprite_index = spr_gilgamesh_slam
}

// wind blast attack
if cur_state == "Wind" && can_wind {
	sprite_index = spr_gilgamesh_wind_blast
}