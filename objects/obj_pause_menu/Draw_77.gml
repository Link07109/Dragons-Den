gpu_set_blendenable(false)

if pause {
	surface_set_target(application_surface)
		if surface_exists(pauseSurf)
			draw_surface(pauseSurf, 0, 0)
		else {
			pauseSurf = surface_create(resW, resH)
			buffer_set_surface(pauseSurfBuffer, pauseSurf, 0)
		}
	surface_reset_target()
}

if keyboard_check_pressed(vk_escape) {
	if !pause { // pause
		pause = true
		instance_deactivate_all(true)
		
		pauseSurf = surface_create(resW, resH)
		surface_set_target(pauseSurf)
		draw_surface(application_surface, 0, 0)
		
		gpu_set_blendenable(true)
		
		// draw transparent color filter over surface
		draw_set_alpha(0.5)
		colorr = c_black
		draw_rectangle_color(0, 0, resW, resH, colorr, colorr, colorr, colorr, false);
		draw_set_alpha(1)
		
		// this function is from a custom script
		draw_inventory_items(resW, resH, has_talisman, has_scarf)
		
		draw_text_transformed(232, resH/2, "Paused", 2, 2, 0)
		// draw_text_transformed(resW/2 - 72 - 128, resH/2, "Continue", 2, 2, 0)
		// draw_text_transformed(resW/2 - 128, resH/2, "Quit", 2, 2, 0)
		
		draw_text_transformed(resW/2 + 32, resH/2, "Items", 2, 2, 0)
		
		gpu_set_blendenable(false)
		surface_reset_target()
		
		if buffer_exists(pauseSurfBuffer)
			buffer_delete(pauseSurfBuffer)
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1)
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0)
	} else { // unpause
		pause = false
		instance_activate_all()
		
		if surface_exists(pauseSurf)
			surface_free(pauseSurf)
		if buffer_exists(pauseSurfBuffer)
			buffer_delete(pauseSurfBuffer)
	}
}

gpu_set_blendenable(true)