draw_text(10, 50, "Lives: " + string(lives));

var hours = floor(time / 3600);
var mins = floor(time / 60) mod 60;
var seconds = floor(time) mod 60;
var ms = floor((time - floor(time)) * 100);

var str_hours = string_replace_all(string_format(hours, 2, 0), " ", "0");
var str_mins  = string_replace_all(string_format(mins, 2, 0), " ", "0");
var str_secs  = string_replace_all(string_format(seconds, 2, 0), " ", "0");
var str_ms    = string_replace_all(string_format(ms, 2, 0), " ", "0");

// Combine into HH:MM:SS.ms format
output = str_hours + ":" + str_mins + ":" + str_secs + "." + str_ms;
draw_set_font(ft_timer);
draw_text(10, 20, "Time: " + output);