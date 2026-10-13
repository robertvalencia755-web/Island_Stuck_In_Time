//Check inputs and save into a struct
//E will be used for interactions
//K will be used for resetting
character_input = new PlayerInput( 
	keyboard_check(vk_left) || keyboard_check(ord("A")), //Right
	keyboard_check(vk_right) || keyboard_check(ord("D")), //Left
	keyboard_check(vk_up) || keyboard_check(ord("W")), //Climb
	keyboard_check_pressed(vk_space), //Jump
	keyboard_check_pressed(ord("E")), //Grab
	keyboard_check_pressed(ord("F"))); //Push Barrel


//push struct into movement_list
array_push(movement_list, character_input);



update_input(character_input);



//Debugging position reset ----DELETE LATER----
if (keyboard_check(ord("R"))){
	x = global.spawnX;
	y = global.spawnY;
}