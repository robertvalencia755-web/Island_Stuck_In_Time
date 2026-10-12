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

    return noone;
}