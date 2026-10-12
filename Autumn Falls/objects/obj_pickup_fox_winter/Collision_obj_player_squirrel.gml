effect_create_above(ef_ring, x, y, 1, c_maroon);

if (global.stick_counter == 5 && global.leaf_counter == 5) {
	room_goto(rm_game_over_winter);
}