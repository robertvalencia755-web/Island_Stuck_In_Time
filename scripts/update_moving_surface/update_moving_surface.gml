function update_moving_surface() {

    if (standingOn != noone) {

        var _dx = standingOn.deltaX;
        var _dy = standingOn.deltaY;

        // Move with platform
        x += _dx;
        y += _dy;
    }
}