//Check inputs and save into a struct
//E will be used for interactions
//K will be used for resetting
var character_input = new PlayerInput( 
	keyboard_check(vk_left) || keyboard_check(ord("A")), //Right
	keyboard_check(vk_right) || keyboard_check(ord("D")), //Left
	keyboard_check(vk_up) || keyboard_check(ord("W")), //Climb
	keyboard_check_pressed(vk_space), //Jump
	keyboard_check_pressed(ord("E")), //Grab
	keyboard_check_pressed(ord("K")), //Reset
	keyboard_check_pressed(vk_enter)); // Clear clones

//push struct into movement_list
array_push(movement_list, character_input);

//update ground state
onGround = place_meeting(x, y + 1, Block_Tile) || place_meeting(x, y + 1, Platform_Object);

update_input(character_input);



//Debugging position reset ----DELETE LATER----
if (keyboard_check(ord("R"))){
	x = global.spawnX;
	y = global.spawnY;
}