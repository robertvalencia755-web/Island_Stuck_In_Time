clone_movements = [];

//Add new clone and movement_list
function add_clone(movement_list){
	array_push(clone_movements, movement_list);
	
	if (array_length(clone_movements) > 3){
		array_delete(clone_movements, 0, 1);
	}
}


//Reset clones to spawn
function reset_clones(){
	instance_destroy(Player_Clone_Object);
	
	for (var i = 0; i < array_length(clone_movements); i ++){
		clone = instance_create_layer(global.spawnX, global.spawnY, "Clones", Player_Clone_Object);
		clone.movement_list = clone_movements[i];
	}
}

function clear_clones(){
	instance_destroy(Player_Clone_Object);
	clone_movements = [];
}