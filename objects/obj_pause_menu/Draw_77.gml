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

if keyboard_check_pressed(vk_space) {
	if !pause { // pause
		pause = true
		instance_deactivate_all(true)
		
		pauseSurf = surface_create(resW, resH)
		surface_set_target(pauseSurf)
		draw_surface(application_surface, 0, 0)
		
		gpu_set_blendenable(true)
		
		draw_set_alpha(0.3)
		colorr = make_color_rgb(100, 100, 100)
		draw_rectangle_color(0, 0, resW, resH, colorr, colorr, colorr, colorr, false);
		draw_set_alpha(1)
		
		draw_text(resW/2, resH/2 - 48, "Paused")
		draw_text(resW/2, resH/2, "Continue")
		draw_text(resW/2, resH/2 + 32, "Quit")
		
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