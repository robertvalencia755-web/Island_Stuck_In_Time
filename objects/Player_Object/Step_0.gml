//Check inputs and save into a struct
var character_input = new PlayerInput( 
	keyboard_check(vk_left), 
	keyboard_check(vk_right),
	keyboard_check_pressed(vk_space),
	keyboard_check_pressed(ord("E")));

//push struct into movement_list
array_push(movement_list, character_input);

//use input struct to actually move player
update_movement(character_input);