// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_inventory_items(resW, resH, has_talisman, has_scarf) {
	
	bgcolor = make_color_rgb(46, 41, 33)
	
	// draw background rect strip
	draw_rectangle_color(0, resH/2 - 48, resW, resH/2 + 48, bgcolor, bgcolor, bgcolor, bgcolor, false)
	
	// draw squares
	for (i = 0; i < 5; i++) {
		draw_sprite(spr_inventory, 0, resW/2 + 128 + (80 * i), resH/2)
	}
	
	if has_talisman
		draw_sprite(spr_talisman, 0, resW/2 + 128, resH/2)
	
	if has_scarf
		draw_sprite(spr_scarf, 0, resW/2 + 128 + 80, resH/2)
}