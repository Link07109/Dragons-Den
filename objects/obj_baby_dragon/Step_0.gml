/// @description Inherit + change from default enemy


if instance_exists(obj_hero) { // check if hero is alive
	if point_distance(x, y, obj_hero.x, obj_hero.y) < aggro_range { // hero in aggro range
		// dash attack
		// move_speed = 6
		
		if can_aggro {
			alarm[0] = 30
			move_towards_point(obj_hero.x, y, 6);
		} else speed = 0
	}
}

// Inherit the parent event
event_inherited();