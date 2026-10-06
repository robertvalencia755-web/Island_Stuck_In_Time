function update_Movement(character_input){
	
		
	
	//X Movement Logic
		moveDir = character_input.right - character_input.left;
		if (moveDir > 0) {
			image_xscale = 1;
			facing = 1;
		}
		if (moveDir < 0) {
			image_xscale = -1; 
			facing = -1;
		}
	
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
		
		ySpd += grav;
		ySpd = min(ySpd, termVel);
		
		//Jumping Logic
		if (character_input.jump && onGround){
			ySpd = jmpSpd;
		}
		
		//Ladder Logic
		if (character_input.up && place_meeting(x, y, Ladder)){
			ySpd = -4;
		}
		
		
		//Collision
		if (place_meeting(x, y + ySpd, Block_Tile)){
			var _pixelCheck = _subpixel * sign(ySpd);
			while(!place_meeting(x, y + _pixelCheck, Block_Tile)){
				y += _pixelCheck;
			}
			ySpd = 0;
		}
		
		
		// Find the other instance we might be touching
		if ((ySpd > 0) && !place_meeting(x, y, Platform_Object)){
			if (place_meeting(x, y + ySpd, Platform_Object)){
				var _pixelCheck = _subpixel * sign(ySpd);
				while(!place_meeting(x, y + _pixelCheck, Platform_Object)){
					y += _pixelCheck;
				}
				ySpd = 0;
			}
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
		