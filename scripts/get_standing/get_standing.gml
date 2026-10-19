function get_standing() {

	if (instance_exists(standingOn)){
		var _surface = standingOn;
		
		var _previousTop = _surface.bbox_top - _surface.deltaY;
		
		var _overlapX = bbox_right > _surface.bbox_left && bbox_left < _surface.bbox_right;
		
		var _wasStanding = abs(bbox_bottom - _previousTop) <= 2;
		
		if (_overlapX && _wasStanding && ySpd >= 0){
			return _surface;
		}
	}

	
    // Check for a carryable box directly below
    var _box = instance_place(x, y + max(1, ySpd) , Carryable_Object);

    if (_box != noone) {
        if (bbox_bottom <= _box.bbox_top + 1 && ySpd >= 0) {
            return _box;
        }
    }

	
    // Check for a moving platform directly below
    var _platform = instance_place(x, y + max(1, ySpd), Moving_Platform_Object);
	
	if (_platform != noone){
		var _previousTop = _platform.bbox_top - _platform.deltaY;

		if (bbox_bottom <= _previousTop + 1) {
		    return _platform;
		}
	}


    

    return noone;
}