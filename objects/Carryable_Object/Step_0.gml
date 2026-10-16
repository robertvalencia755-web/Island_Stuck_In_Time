prevX = x;
prevY = y;

onGround = false;

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
		onGround = true;
	}
	
	
	//Platform Collisions
	if (place_meeting(x, y + ySpd, Platform_Object) &&  !place_meeting(x, y, Platform_Object)){
		var _pixelCheck = .5 * sign(ySpd);
		while(!place_meeting(x, y + _pixelCheck, Platform_Object)){
			y += _pixelCheck;
		}
		ySpd = 0;
		onGround = true;
	}
	
	y += ySpd;
	
}

standingOn = instance_place(x, y - 1, all);

deltaX = x - prevX;
deltaY = y - prevY;
