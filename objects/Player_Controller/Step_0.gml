//If Lives run out, go to game over screen
if (lives == 0) room_goto(Game_Over);

if (room == Game_Complete) gameComplete = true;

time += delta_time / 1000000;

