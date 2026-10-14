deltaX = x - prevX;
deltaY = y - prevY;

prevX = x;
prevY = y;

move = false;
with (Button_Object){
	if ((channel == other.Button_Channel)){
		
		if (pressed == true){
			other.move = true;
		}
	}
}