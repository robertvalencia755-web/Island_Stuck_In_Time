for (currentMove = 0; currentMove < array_length(movement_list); currentMove++){
	character_input = movement_list[currentMove];
	onGround = place_meeting(x, y + 1, Block_Tile);

	update_input(character_input);
}
