
if (audio_is_playing(Barrel_Roll_Sound)) audio_stop_sound(Barrel_Roll_Sound);
audio_play_sound(Barrel_Smash_Sound, 1, false);
alarm[0] = 10;