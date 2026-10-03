function update_Movement(character_input){
	
	//X Walking Logic
		moveDir = character_input.right - character_input.left;
		//X Animation
		if (moveDir != 0){
			sprite_index = Character_Walk;
			if (moveDir > 0) image_xscale = 1;
			if (moveDir < 0) image_xscale = -1;
		} else {
			sprite_index = Character_Idle;
		}
	
		xSpd = moveDir * moveSpd;
	
		var _subpixel = .5;
		if place_meeting(x + xSpd, y, Block_Tile){
			var _pixelCheck = _subpixel * sign(xSpd);
			while !place_meeting(x + _pixelCheck, y, Block_Tile){
				x += _pixelCheck;
			}
		
			xSpd = 0;
		}
		x += xSpd;
		
		
	//Jumping Logic
	ySpd += grav;
	
	if (ySpd == termVel) { ySpd = termVel; };
	
	if (character_input && place_meeting(x, y+1, Block_Tile) || place_meeting(x, y+1, Platform_Object)){
		ySpd = jmpSpd;
	}
	
	var _subpixel = .5;
	if (place_meeting(x, y + ySpd, Block_Tile)){
		var _pixelCheck = _subpixel * sign(ySpd);
		while(!place_meeting(x, y + _pixelCheck, Block_Tile)){
			y += _pixelCheck;
		}
		ySpd = 0;
	}
	y += ySpd;
	
	
}
		