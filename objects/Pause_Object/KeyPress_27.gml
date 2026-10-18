paused = !paused;
currRoom = room;

if (paused) {
    // Deactivate all objects EXCEPT this pause controller
	create_pause();
} else {
    // Reactivate everything to resume the game
	delete_pause();
}