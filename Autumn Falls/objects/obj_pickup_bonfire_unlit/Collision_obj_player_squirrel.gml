if (global.stick_counter == 5 && global.leaf_counter == 5) {
	instance_create_depth(x, y, -100, obj_pickup_bonfire_lit_scaled)
	instance_destroy();
}

