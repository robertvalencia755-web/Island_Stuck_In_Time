if (room == Main_Menu) {
	audio_stop_all();
	audio_play_sound(Main_Menu_Music, 0, true);
	audio_play_sound(Wind_Sound, 1, true);
} else if (room == Starting_Mount){
	audio_stop_all();
	audio_play_sound(Tutorial_Music, 0, true);
} else if (room == Starting_Mount_1){
	audio_stop_all();
	audio_play_sound(Loop_1_Music, 0, true);
} else if (room == Starting_Mount_2) {
	audio_stop_all();
	audio_play_sound(Loop_2_Music, 0, true);
}
