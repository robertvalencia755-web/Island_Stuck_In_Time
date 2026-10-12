carried = false;
offsetX = 15;
offsetY = 64;
var otherX;
var otherY;
ySpd = 0;

prevX = x;
prevY = y;

deltaX = 0;
deltaY = 0;

function carry(_x, _y){
	carried = true;
	otherX = _x;
	otherY = _y - (sprite_get_height(Character_Carry)/2) - (sprite_height/2) - 5;
}

function place(_x, _y, facing){
	var positionX

	//Check where character facing
	if (facing == 1){ //if character facing right
		positionX = _x + (sprite_get_width(Character_Carry)/2) + offsetX;
		
	} else if (facing == -1){
		positionX = _x - (sprite_get_width(Character_Carry)/2) - offsetX;
	}
	
	//Check if placing would clip into another block
	if (place_meeting(positionX, y + offsetY, Block_Tile) || place_meeting(positionX, y + offsetY, Platform_Object) || place_meeting(positionX, y + offsetY, Carryable_Object)){
		return false;
	} else { // place the block
		carried = false;
		x = positionX;
		y += offsetY;
		return true;
	}
}

function death_place(_x, _y){
	carried = false;
	x = _x;
	y = _y;
	return true;
	
	
}