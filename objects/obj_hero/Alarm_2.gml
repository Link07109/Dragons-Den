/// @description fire ball hitbox

spell = instance_create_layer(x + 8 * image_xscale, y - 20, "Projectiles", cur_spell)
spell.dir = image_xscale
audio_sound_set_track_position(snd_hero_fire, 0.2)
audio_play_sound(snd_hero_fire, 0, false)