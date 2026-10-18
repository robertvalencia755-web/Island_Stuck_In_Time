if (instance_exists(Player_Clone_Handler)){
	instance_destroy(Player_Clone_Handler);
}

instance_destroy(Player_Controller);

room_goto(Main_Menu);