opened = false;
with (Button_Object){
	if ((channel == other.channel)){
		
		if (pressed == true){
			other.opened = true;
		}
	}
}


if (opened) {
    // Opening: Frame 0 -> Frame 8
	mask_index = Empty_Mask;
    image_index = min(image_index + animSpd, 8);
} else {
    // Closing: Frame 8 -> Frame 0
	mask_index = sprite_index;
    image_index = max(image_index - animSpd, 0);
}