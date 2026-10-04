// Calculate percentage
var hp_percent = (hp / 100) * 100;

// Draw the health bar (X1, Y1, X2, Y2, amount, back_color, min_color, max_color, direction, show_back, show_border)
draw_healthbar(20, 20, 220, 40, hp_percent, c_black, c_red, c_green, 0, true, true);

//Debugging
draw_text(20, 40, string(can_damage));
draw_text(20, 60, string(carrying));
draw_text(20, 80, string(onGround));
