//Check inputs and save into a struct
//E will be used for interactions
//K will be used for resetting
var character_input = new PlayerInput( 
	left: keyboard_check(vk_left), 
	right: keyboard_check(vk_right),
	space: keyboard_check_pressed(vk_space),
	Let_E: keyboard_check_pressed(ord("E")),
	Let_K: keyboard_check_pressed(ord("K")));

//push struct into movement_list
array_push(movement_list, character_input);

//use input struct to actually move player
update_movement(character_input);

