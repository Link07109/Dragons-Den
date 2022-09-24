/// @description When you enter the boss room
audio_stop_all()
audio_play_sound(snd_boss_fight, 0, true)

states = ["Dialogue", "Walk", "Slam", "Wind", "Death"]
cur_state = states[1]