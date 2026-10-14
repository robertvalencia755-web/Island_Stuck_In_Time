
if (button == false || move == true){

	if (Movement_Type == "HORIZONTAL"){
		if (start){
		
			//Horizontal Movement To Finish
			if (point_distance(x, y, finishX, y) > Movement_Speed) {
			    move_towards_point(finishX, y, Movement_Speed);
			} else {
			    speed = 0;
			    x = finishX;
				start = false;
			}
	
		} else {
		
			//Horizontal Movement To Start
			if (point_distance(x, y, startX, y) > Movement_Speed) {
			    move_towards_point(startX, y, Movement_Speed);
			} else {
			    speed = 0;
			    x = startX;
				start = true;
			}
	
		}


	} else {//MOVEMENT VERTICAL
		if (start){
		
			//Vertical Movement To Finish
			if (point_distance(x, y, x, finishY) > Movement_Speed) {
			    move_towards_point(x, finishY, Movement_Speed);
			} else {
			    speed = 0;
			    y = finishY;
				start = false;
			}
	
		} else {
		
			//Vertical Movement To Start
			if (point_distance(x, y, x, startY) > Movement_Speed) {
			    move_towards_point(x, startY, Movement_Speed);
			} else {
			    speed = 0;
			    y = startY;
				start = true;
			}	
		
		}
	}
} else {
	speed = 0;
}















