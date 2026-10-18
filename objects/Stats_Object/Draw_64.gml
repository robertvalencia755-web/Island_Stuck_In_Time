var _time_stamps = Player_Controller.time_stamps;

// Section Titles
draw_set_font(ft_large);

draw_text(64, 424, "Tutorial:");
draw_text(504, 424, "Loop 1:");
draw_text(944, 424, "Loop 2:");


// Level Timestamps
draw_set_font(ft_small);

// Tutorial
draw_text(88, 488, "Start: " + Player_Controller.format_time(_time_stamps[0]));
draw_text(88, 528, "Forest: " + Player_Controller.format_time(_time_stamps[1]));
draw_text(88, 568, "Plains: " + Player_Controller.format_time(_time_stamps[2]));
draw_text(88, 610, "Beach: " + Player_Controller.format_time(_time_stamps[3]));

// Loop 1
draw_text(528, 488, "Start: " + Player_Controller.format_time(_time_stamps[4]));
draw_text(528, 528, "Forest: " + Player_Controller.format_time(_time_stamps[5]));
draw_text(528, 568, "Plains: " + Player_Controller.format_time(_time_stamps[6]));
draw_text(528, 610, "Beach: " + Player_Controller.format_time(_time_stamps[7]));

// Loop 2
draw_text(968, 488, "Start: " + Player_Controller.format_time(_time_stamps[8]));
draw_text(968, 528, "Forest: " + Player_Controller.format_time(_time_stamps[9]));
draw_text(968, 568, "Plains: " + Player_Controller.format_time(_time_stamps[10]));
draw_text(968, 610, "Castle: " + Player_Controller.format_time(_time_stamps[11]));