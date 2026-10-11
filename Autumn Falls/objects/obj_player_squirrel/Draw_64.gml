draw_set_colour(c_white);


draw_text(50, 700, "health:" + string(player_hp));

if (global.leaf_counter == 9 && room == rm_game_level1_squirrel) {
	draw_text(300, 100,"All leaves collected!");	
	
}

if (global.stick_counter == 9  && room == rm_game_level1_squirrel) {
	draw_text(300, 50,"All sticks collected!");	
	
}

if (global.leaf_counter == 9 && global.stick_counter == 9  && room == rm_game_level1_squirrel) {
	draw_text (300, 0, "All objectives complete! Make it to the fox!!")
}

//winter level

if (global.leaf_counter == 5 && room == rm_game_winter_level_squirrel) {
	draw_text(300, 100,"All leaves collected!");	
	
}

if (global.stick_counter == 5  && room == rm_game_winter_level_squirrel) {
	draw_text(300, 50,"All sticks collected!");	
	
}

if (global.leaf_counter == 5 && global.stick_counter == 5  && room == rm_game_winter_level_squirrel) {
	draw_text (300, 0, "All objectives complete! Make it to the fox!!")
}

draw_set_colour(c_red);

draw_text(600, 200, "Heat:" + string(ceil(timer)));