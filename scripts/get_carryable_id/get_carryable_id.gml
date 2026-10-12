function get_carryable_id(){
	//If facing right
	if (facing == 1){
		if (place_meeting(x + 64, y, Carryable_Object)){
			return instance_place(x + 64, y, Carryable_Object);
		}
	} else if (facing == -1){ // if facing left
		if (place_meeting(x - 64, y, Carryable_Object)){
			return instance_place(x - 64, y, Carryable_Object);
		}
	}

}