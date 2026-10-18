//If Lives run out, go to game over screen
if (lives == 0){
	room_goto(Game_Over);
}
time += delta_time / 1000000;

