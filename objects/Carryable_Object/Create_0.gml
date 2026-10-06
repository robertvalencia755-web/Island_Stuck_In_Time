carried = false;
var otherX;
var otherY;
ySpd = 0;

function carry(_x, _y){
	carried = true;
	otherX = _x;
	otherY = _y - (sprite_get_height(Character_Carry)/2) - (sprite_height/2) - 5;
}

function place(_x, _y, facing){
	carried = false;
	
	if (facing == 1){ //if character facing right
		x = _x + (sprite_get_width(Character_Carry)/2);
	} else if (facing == -1){
		x = _x - (sprite_get_width(Character_Carry)/2);
	}
	
}