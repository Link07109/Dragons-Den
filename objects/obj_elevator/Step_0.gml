/// @description move

if !has_stopped && is_going_down && y < y_bounds {
	y += 5
} else if !has_stopped && is_going_down && y >= y_bounds {
	alarm[0] = 75
	has_stopped = true
	is_going_down = false
} else if !has_stopped && !is_going_down && y > init_y {
	y -= 5
} else if !has_stopped && !is_going_down && y <= init_y {
	alarm[0] = 75
	has_stopped = true
	is_going_down = true
}