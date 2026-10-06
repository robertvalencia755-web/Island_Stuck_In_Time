if (carried){
	x = otherX;
	y = otherY;
} else{
	
	ySpd += 10;
	
	if (place_meeting(x, y + ySpd, Block_Tile) || place_meeting(x, y + ySpd, Platform_Object)){
		var _pixelCheck = .5 * sign(ySpd);
		while(!place_meeting(x, y + _pixelCheck, Block_Tile)){
			y += _pixelCheck;
		}
		ySpd = 0;
	}
	
	y += ySpd;
	
}