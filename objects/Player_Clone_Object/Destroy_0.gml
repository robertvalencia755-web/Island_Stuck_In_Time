if (carrying == true) carriedItem.place(x, y, facing);
instance_create_layer(x,y, "Clones", Player_Clone_Death_Object);
instance_destroy();