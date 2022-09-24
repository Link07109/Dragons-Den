if sprite_index == spr_hero_attack {
	can_attack = true
	is_actionable = true
}

if sprite_index == spr_hero_spell_attack {
	is_actionable = true
}	

if sprite_index != spr_hero_jump
	sprite_index = spr_hero