pressed = place_meeting(x, y+1, Player_Object);

if (pressed){
	image_index = down;
	if (sound == true){
		audio_play_sound(Button_Press_Sound, 1, false);
		sound = false;
	}
} else {
	image_index = up;
	if (sound == false){
		audio_play_sound(Button_Press_Sound, 1, false);
		sound = true;
	}
}