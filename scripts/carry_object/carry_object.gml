function carry_object(character_input){
	/*
	For the carrying logic, The character will utilize place_meeting to detect if a carryable_object is within range. 
	If within that range, and 'E' is pressed then lock the carryable_object instance's location to above the player.
	Switch Carrying to true.

	If (!carrying){
		if (theres a carryable_object in front of the player && 'E' is pressed){
	} else if (carrying){
		if ('E' pressed) {
			place currently carried object down one block infront of the block you are facing.
		}
	}
	*/
	
	if (!carrying){
		if (detect_carryable() && character_input.grab){
			carriedItem = get_carryable_id();
			//set carryable to follow above player
			carriedItem.carry(x, y);
			carrying = true;
			
		}
	} else if (carrying && character_input.grab){ //place carryable infront of the player 
		carriedItem.place(x, y, facing);
		carrying = false;
	} else if (carrying){
		//continue passing player coordinates
		carriedItem.carry(x, y);
		
	} 
}