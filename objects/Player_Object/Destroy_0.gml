if (carrying == true) carriedItem.place(x, y, facing);
Player_Clone_Handler.add_clone(movement_list);
Player_Clone_Handler.reset_clones();
instance_create_layer(x,y,"Player",Player_Death_Object);
instance_destroy();