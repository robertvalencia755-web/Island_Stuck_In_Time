paused = false;
currRoom = room;

function create_pause(){
	instance_deactivate_all(true); 
    audio_pause_all(); 
	
	instance_create_layer(room_width/2,192,"Player", Restart_Button_Object);
	instance_create_layer(room_width/2,384,"Player", Controls_Button_Object);
	instance_create_layer(room_width/2,576,"Player", Exit_Button_Object);
	
	room_persistent = true;
}

function delete_pause(){
	instance_activate_all();
    audio_resume_all();
	
	instance_destroy(Restart_Button_Object);
	instance_destroy(Controls_Button_Object);
	instance_destroy(Exit_Button_Object);
	
	room_persistent = false;
}