function update_input(character_input){
	standingOn = get_standing();
	
	//Update location if surface is moving
	if(standingOn != noone) update_moving_surface()
		
	//Update the players movement
	update_Movement(character_input);
	

	
	//Check if player wants to carry object
	carry_object(character_input);	
	
}