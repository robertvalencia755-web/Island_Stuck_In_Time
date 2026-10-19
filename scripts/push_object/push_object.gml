function push_object(character_input){
	
	if (character_input.push){
		barrel = instance_place(x + (32 * facing), y, Barrel_Object);
		if (barrel != noone){
			barrel.facing = facing;
			barrel.pushed = true;
		}
	}
}