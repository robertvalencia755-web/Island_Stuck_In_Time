function detect_carryable(){
	if (facing == 1){ //facing right
		return place_meeting(x + 64, y, Carryable_Object);
	} else if (facing == -1){
		return place_meeting(x - 64, y, Carryable_Object);
	}
}