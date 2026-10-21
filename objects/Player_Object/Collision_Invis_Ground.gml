
var txDist = point_distance(x, bbox_top, x, other.bbox_top);
var bxDist = point_distance(x, bbox_bottom, x, other.bbox_bottom);
	

	
if (place_meeting(x, bbox_top, other)){
	y += txDist;
} else if (place_meeting(x, bbox_bottom, other)){
	y -= bxDist;
}