lives -= 1;
if (carrying == true) carriedItem.death_place(x, y);
Player_Clone_Handler.add_clone(movement_list);
Player_Clone_Handler.reset_clones();
instance_destroy();