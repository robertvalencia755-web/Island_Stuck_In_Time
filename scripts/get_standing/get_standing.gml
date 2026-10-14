function get_standing() {

    // Check for a carryable box directly below
    var _box = instance_place(x, y + 1, Carryable_Object);

    if (_box != noone) {
        if (bbox_bottom <= _box.bbox_top + 1) {
            return _box;
        }
    }

    // Check for a moving platform directly below
    var _platform = instance_place(x, y + 1, Moving_Platform_Object);

    if (_platform != noone) {
        if (bbox_bottom <= _platform.bbox_top + 1) {
            return _platform;
        }
    }


    // Check whether the previous surface is still below us
    if (standingOn != noone && instance_exists(standingOn)) {

        if (
            bbox_right > standingOn.bbox_left &&
            bbox_left < standingOn.bbox_right &&
            abs(bbox_bottom - standingOn.bbox_top) <=
                max(1, abs(standingOn.deltaY) + 1)
        ) {
            return standingOn;
        }
    }

    return noone;
}