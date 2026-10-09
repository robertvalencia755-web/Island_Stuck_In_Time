
//Clear all clones if enter
if (keyboard_check_pressed(vk_enter)){
	clear_clones();
}

if (keyboard_check_pressed(ord("K"))){
	instance_destroy(Player_Object);
}