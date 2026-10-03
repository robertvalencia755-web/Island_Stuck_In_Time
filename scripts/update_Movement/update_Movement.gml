function update_Movement(character_input){
	
		
	
	//X Movement Logic
		moveDir = character_input.right - character_input.left;
		if (moveDir > 0) image_xscale = 1;
		if (moveDir < 0) image_xscale = -1;
	
		xSpd = moveDir * moveSpd;
		
		//Collision
		var _subpixel = .5;
		if place_meeting(x + xSpd, y, Block_Tile){
			var _pixelCheck = _subpixel * sign(xSpd);
			while !place_meeting(x + _pixelCheck, y, Block_Tile){
				x += _pixelCheck;
			}
		
			xSpd = 0;
		}
		x += xSpd;
		
		
	//Y Movement Logic
		var onGround = place_meeting(x, y + 1, Block_Tile) || place_meeting(x, y + 1, Platform_Object);
		ySpd += grav;
		ySpd = min(ySpd, termVel);
	
		if (character_input.jump && onGround){
			ySpd = jmpSpd;
		}
		
		//Collision
		if (place_meeting(x, y + ySpd, Block_Tile)){
			var _pixelCheck = _subpixel * sign(ySpd);
			while(!place_meeting(x, y + _pixelCheck, Block_Tile)){
				y += _pixelCheck;
			}
			ySpd = 0;
		}
		y += ySpd;
		
		
	// ANIMATION
		if (!onGround) {
		    // In the air
		    if (carrying) {
		        sprite_index = Character_Carry_Jump;
		    } else {
		        sprite_index = Character_Jump;
		    }
		}
		else if (moveDir != 0) {
		    // Walking on ground
		    if (carrying) {
		        sprite_index = Character_Carry_Walk;
		    } else {
		        sprite_index = Character_Walk;
		    }
		}
		else {
		    // Standing on ground
		    if (carrying) {
		        sprite_index = Character_Carry;
		    } else {
		        sprite_index = Character_Idle;
		    }
		}
		
	//Room Borders
		var left_offset  = x - bbox_left;
		var right_offset = bbox_right - x;

		x = clamp(x, left_offset, room_width - right_offset);
	
}
		