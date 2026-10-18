if (instance_exists(Player_Clone_Handler)){
	instance_destroy(Player_Clone_Handler);
}

if (Pause_Object.paused){
	Pause_Object.delete_pause();
	instance_destroy(Pause_Object);
}

instance_destroy(Player_Controller);

room_goto(Main_Menu);