if (global.stick_counter == 1 && global.leaf_counter == 1) {
	instance_create_depth(x, y, -100, obj_pickup_bonfire_lit_scaled)
}

instance_destroy();