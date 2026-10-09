carried = false;
offsetX = 15;
offsetY = 64;
var otherX;
var otherY;
ySpd = 0;

function carry(_x, _y){
	carried = true;
	otherX = _x;
	otherY = _y - (sprite_get_height(Character_Carry)/2) - (sprite_height/2) - 5;
}

function place(_x, _y, facing){
	var positionX

	if (facing == 1){ //if character facing right
		positionX = _x + (sprite_get_width(Character_Carry)/2) + offsetX;
		
	} else if (facing == -1){
		positionX = _x - (sprite_get_width(Character_Carry)/2) - offsetX;
	}
	
	//Check if placing would clip into another block
	if (place_meeting(positionX, y + offsetY, Block_Tile) || place_meeting(positionX, y + offsetY, Platform_Object) || place_meeting(positionX, y + offsetY, Carryable_Object)){
		//Try placing it lower
		//if (place_meeting(positionX, y, Block_Tile) || place_meeting(positionX, y, Platform_Object) || place_meeting(positionX, y, Carryable_Object)){}
		return false;
	} else {
		x = positionX;
		y += offsetY;
		carried = false;
		return true;
	}
}