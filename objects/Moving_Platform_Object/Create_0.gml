
start = true;

button = false
move = true;
if (Button_Channel != -1) {
	button = true;
	move = false;
}
	

startX = x;
startY = y;

if (Movement_Type == "HORIZONTAL"){
	if (Movement_Direction == "LEFT"){
		finishX = x - (64 * Blocks)
	} else { //RIGHT
		finishX = x + (64 * Blocks);
	}
	
} else{ //Vertical
	if (Movement_Direction == "UP"){
		finishY = y - (64 * Blocks);
	} else{ //DOWN
		finishY = y + (64 * Blocks);
	}
}


prevX = x;
prevY = y;

deltaX = 0;
deltaY = 0;