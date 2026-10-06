function update_input(character_input){
	
	//Update the players movement
	update_Movement(character_input);
	
	//Check if player wants to reset/die
	check_reset(character_input);
	
	//Check if player wants to carry object
	carry_object(character_input);
	
	//Check if player wants to clear clone memory
	if (character_input.clear) Player_Clone_Handler.clear_clones();
	
	
}