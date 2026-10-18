lives -= 1;

if (lives > 0) {
	if (carrying == true) carriedItem.death_place(x, y);
	if (instance_exists(Player_Clone_Handler)){
		Player_Clone_Handler.add_clone(movement_list);
		Player_Clone_Handler.reset_clones();
	}

	instance_create_layer(x, y, "Player", Player_Death_Object);
}


	