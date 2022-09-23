/// @description anim end

if sprite_index == spr_gilgamesh_death {
	instance_destroy()
}

if sprite_index == spr_gilgamesh_slam {
	instance_create_layer(x, y + (sprite_height / 2), "Projectiles", obj_ground_hit)
}

if sprite_index == spr_gilgamesh_wind_blast {
	instance_create_layer(x, y, "Projectiles", obj_wind_blast)
}

//if sprite_index != spr_gilgamesh_walk {
	sprite_index = spr_gilgamesh_walk
	cur_state = states[1]
//}