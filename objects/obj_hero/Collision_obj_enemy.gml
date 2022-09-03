/// @description Take damage from enemy

if is_vulnerable {
	hp -= other.attack_damage
	alarm[0] = 2000 // ms
	vulnerable = false
}

if hp <= 0 { // death
	if scarf_available {
		hp = 2
		scarf_available = false // becomes true again at a checkpoint
	} else {
		instance_destroy() // would be replaced with a death animation and then on the animation end it would get destroyed
	}
}