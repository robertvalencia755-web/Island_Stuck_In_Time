
if (keyboard_check_pressed(ord("R"))){ // teleport to spawn
	Player_Object.x = global.spawnX
	Player_Object.y = global.spawnY
} else if (keyboard_check_pressed(ord("L"))){ // reset lives
	lives = 30;
} else if (keyboard_check_pressed(ord("T"))){ // teleport to finish
	x = Room_Complete_Object.x - 32;
	y = Room_Complete_Object;
} else if (keyboard_check_pressed(ord("N"))){
	room_goto_next();
} else if (keyboard_check_pressed(ord("P"))){
	lives = 1;
} else if (keyboard_check(vk_shift)){
	
	if (keyboard_check_pressed(ord("0"))){
		room_goto(global.room_code[0]);
	} else if (keyboard_check_pressed(ord("1"))){
		room_goto(global.room_code[1]);
	} else if (keyboard_check_pressed(ord("2"))){
		room_goto(global.room_code[2]);
	} else if (keyboard_check_pressed(ord("3"))){
		room_goto(global.room_code[3]);
	} else if (keyboard_check_pressed(ord("4"))){
		room_goto(global.room_code[4]);
	} else if (keyboard_check_pressed(ord("5"))){
		room_goto(global.room_code[5]);
	} else if (keyboard_check_pressed(ord("6"))){
		room_goto(global.room_code[6]);
	} else if (keyboard_check_pressed(ord("7"))){
		room_goto(global.room_code[7]);
	} else if (keyboard_check_pressed(ord("8"))){
		room_goto(global.room_code[8]);
	} else if (keyboard_check_pressed(ord("9"))){
		room_goto(global.room_code[9]);
	}
}