
//Clear all clones if enter
if (keyboard_check_pressed(vk_enter)){
	clear_clones();
}

if (keyboard_check_pressed(ord("K"))){
	instance_destroy(Player_Object);
	//instance_destroy(Player_Clone_Object);
	//reset_clones();
	alarm[0] = 15;
}