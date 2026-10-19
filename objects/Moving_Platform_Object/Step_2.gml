

if (button == true){
	move = false;
	with (Button_Object){
		if ((channel == other.Button_Channel)){
		
			if (pressed == true){
				other.move = true;
			}
		}
	}
}