if (!gameComplete){
	draw_text(10, 50, "Lives: " + string(lives));


	draw_set_font(ft_timer);
	draw_text(10, 20, "Time: " + format_time(time));

}