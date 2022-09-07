/// @description move

if !has_stopped && is_going_down && y < 1230 {
	y += 5
} else if !has_stopped && is_going_down && y >= 1230 {
	alarm[0] = 50
	has_stopped = true
	is_going_down = false
} else if !has_stopped && !is_going_down && y > 770 {
	y -= 5
} else if !has_stopped && !is_going_down && y <= 770 {
	alarm[0] = 50
	has_stopped = true
	is_going_down = true
}