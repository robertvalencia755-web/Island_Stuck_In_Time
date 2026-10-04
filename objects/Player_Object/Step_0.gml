//Check inputs and save into a struct
//E will be used for interactions
//K will be used for resetting
var character_input = new PlayerInput( 
	keyboard_check(vk_left) || keyboard_check(ord("A")), 
	keyboard_check(vk_right) || keyboard_check(ord("D")),
	keyboard_check(vk_up) || keyboard_check(ord("W")),
	keyboard_check_pressed(vk_space),
	keyboard_check_pressed(ord("E")),
	keyboard_check_pressed(ord("K")));

//push struct into movement_list
array_push(movement_list, character_input);

//use input struct to update player
onGround = place_meeting(x, y + 1, Block_Tile);
update_input(character_input);

//Spike Damage
/*
if (place_meeting(x, y, Spike_Object)){
	if (can_damage){
	hp -= 10;
	can_damage = false;
	alarm[0] = game_get_speed(gamespeed_fps) * 2;
	}
}*/
	
if (keyboard_check(ord("R"))){
	x = 480;
	y = 550;
}