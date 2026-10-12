function update_Movement(character_input){
	
	//X Movement Logic
		moveDir = character_input.right - character_input.left;
		if (moveDir != 0) {
			facing = sign(moveDir);
			image_xscale = facing;
		}
	
		hspeed = moveDir * moveSpd;
		
		
		/*
		//Basic Collision
		var _subpixel = .5;
		if (place_meeting(x + xSpd, y, Block_Tile)){
			
			var _pixelCheck = _subpixel * sign(xSpd);
			while !place_meeting(x + _pixelCheck, y, Block_Tile){
				x += _pixelCheck;
			}
		
			xSpd = 0;
		}
		*/
		
		
		
	//Y Movement Logic
		
		
		
		//update ground state
		onGround = place_meeting(x, y + 1, Block_Tile);
		
		//gravity logic
		if (onGround){
			gravity = 0;
			vspeed = 0;
		} else {
			gravity = .35;
		}
		
		//Ladder Logic
		if (character_input.up && place_meeting(x, y, Ladder)){
			vspeed = -4;
		}
		
		/*
		//Basic Collision
		if (place_meeting(x, y + ySpd, Block_Tile)){
			var _pixelCheck = _subpixel * sign(ySpd);
			while(!place_meeting(x, y + _pixelCheck, Block_Tile)){
				y += _pixelCheck;
			}
			ySpd = 0;
		}
		*/
		
		
		/*
		//Platform collision
		if ((ySpd > 0) && !place_meeting(x, y, Platform_Object)){
			if (place_meeting(x, y + ySpd, Platform_Object)){
				var _pixelCheck = _subpixel * sign(ySpd);
				while(!place_meeting(x, y + _pixelCheck, Platform_Object)){
					y += _pixelCheck;
				}
				ySpd = 0;
				onGround = true;
			}
		}
		*/
		
		//Jumping Logic
		if (character_input.jump && onGround){
			vspeed = jmpSpd;
		}

		vspeed = min(vspeed, termVel);
		
		
		
		
		
		
		
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
		