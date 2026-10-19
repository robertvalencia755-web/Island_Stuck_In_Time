
if (pushed == true){
	xSpd = facing * move_speed;
	image_xscale = -facing;
	sprite_index = Rolling_Barrel;

	ySpd += 2;
	
	//Fall Collisions
	if (place_meeting(x, y + ySpd, Block_Tile)){
		var _pixelCheck = .5 * sign(ySpd);
		while(!place_meeting(x, y + _pixelCheck, Block_Tile)){
			y += _pixelCheck;
		}
		ySpd = 0;
	}
	
	
	//Platform Collisions
	if (place_meeting(x, y + ySpd, Platform_Object) &&  !place_meeting(x, y, Platform_Object)){
		var _pixelCheck = .5 * sign(ySpd);
		while(!place_meeting(x, y + _pixelCheck, Platform_Object)){
			y += _pixelCheck;
		}
		ySpd = 0;
	}

	ySpd = min(ySpd, 8);
	y += ySpd;

	if ((place_empty(x + xSpd, y)) || (place_meeting(x + xSpd, y, Player_Object)) || (place_meeting(x + xSpd, y, Spike_Object))){
		x += xSpd;
	} else if ((x < 0) || (x > room_width)){
		instance_destroy();
	}  else {
		instance_destroy();
	}
}
	