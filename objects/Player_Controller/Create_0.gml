lives = 25;
time = 0;
time_stamps = [];
gameComplete = false;


function format_time(time){
	var hours = floor(time / 3600);
	var mins = floor(time / 60) mod 60;
	var seconds = floor(time) mod 60;
	var ms = floor((time - floor(time)) * 100);

	var str_hours = string_replace_all(string_format(hours, 2, 0), " ", "0");
	var str_mins  = string_replace_all(string_format(mins, 2, 0), " ", "0");
	var str_secs  = string_replace_all(string_format(seconds, 2, 0), " ", "0");
	var str_ms    = string_replace_all(string_format(ms, 2, 0), " ", "0");

	// Combine into HH:MM:SS.ms format
	return str_hours + ":" + str_mins + ":" + str_secs + "." + str_ms;
}