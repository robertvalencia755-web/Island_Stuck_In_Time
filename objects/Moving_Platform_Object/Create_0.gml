
start = true;

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

	