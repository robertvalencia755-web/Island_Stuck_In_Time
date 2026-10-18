
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
} else if (keyboard_check(vk_shift)){
	for (var i = 0; i < 9; i++){
		var num = keyboard_check(ord(string(i)));
		if (num == true){
			_room = global.room_code[real(num)]
			room_goto(_room);
		}
	}
}