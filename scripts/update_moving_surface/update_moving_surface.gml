function update_moving_surface() {

    if (standingOn == noone || !instance_exists(standingOn)) {
        return;
    }

    var _surface = standingOn;

    var _dx = _surface.deltaX;
    var _dy = _surface.deltaY;

    // Only follow the surface while standing on it
    if (bbox_right > _surface.bbox_left &&
        bbox_left < _surface.bbox_right) {

        // Move with surface
        x += _dx;
        y += _dy;
		
		if (_dy != 0){
			y += (_surface.bbox_top - 1) - bbox_bottom;
		}

        // Prevent downward gravity from separating
        // the player from the moving surface
        if (ySpd > 0) {
            ySpd = 0;
        }
    }
}