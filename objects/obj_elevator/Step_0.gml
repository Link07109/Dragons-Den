/// @description move

if !has_stopped && is_going_down && y < 1000 {
	y += 10
} else if !has_stopped && is_going_down && y >= 1000 {
	alarm[0] = 50
	has_stopped = true
	is_going_down = false
} else if !has_stopped && !is_going_down && y > 760 {
	y -= 10
} else if !has_stopped && !is_going_down && y <= 760 {
	alarm[0] = 50
	has_stopped = true
	is_going_down = true
}