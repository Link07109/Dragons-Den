/// @description Inherit + change from default enemy


if instance_exists(obj_hero) { // check if hero is alive
	if point_distance(x, y, obj_hero.x, obj_hero.y) < aggro_range { // hero in aggro range
		// dash attack
		
		if can_aggro {
			if !aggro_timer_started {
				alarm[0] = 23
				aggro_timer_started = true
			}
			move_towards_point(obj_hero.x, y, 8);
			sprite_index = spr_baby_dragon_attack
			
			if (obj_hero.x > x)
				image_xscale = -1
			else
				image_xscale = 1
		} else {
			speed = 0
			sprite_index = spr_baby_dragon
		}
	}
}

// Inherit the parent event
if !can_aggro
	event_inherited()