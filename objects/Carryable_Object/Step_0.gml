if (carried){
	x = otherX;
	y = otherY;
} else{
	
	ySpd += 4;
	
	//Fall Collisions
	if (place_meeting(x, y + ySpd, Block_Tile)){
		var _pixelCheck = .5 * sign(ySpd);
		while(!place_meeting(x, y + _pixelCheck, Block_Tile)){
			y += _pixelCheck;
		}
		ySpd = 0;
	}
	

	if (place_meeting(x, y + ySpd, Platform_Object)){
		var _pixelCheck = .5 * sign(ySpd);
		while(!place_meeting(x, y + _pixelCheck, Platform_Object)){
			y += _pixelCheck;
		}
		ySpd = 0;
	}
	
	y += ySpd;
	
}