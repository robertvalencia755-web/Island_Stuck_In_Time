if (other.onGround){
	var yDist = point_distance(x, bbox_bottom, x, other.bbox_top);
	var lxDist = point_distance(bbox_left, y, other.bbox_left, y);
	var rxDist = point_distance(bbox_right, y, other.bbox_right, y);
	
	if (place_empty(x, y - yDist)){
		y -= yDist;
	} else if (place_empty(x - lxDist, y)){
		x -= lxDist;
	} else if (place_empty(x + rxDist, y)){
		x += rxDist;
	}
}