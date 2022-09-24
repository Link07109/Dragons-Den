/// @description sword hitbox

hitbox = instance_create_layer(x + 48 * image_xscale, y, "Projectiles", obj_hero_swing)
hitbox.dir = image_xscale
audio_sound_set_track_position(snd_hero_attack, 0.33)
audio_play_sound(snd_hero_attack, 0, false)