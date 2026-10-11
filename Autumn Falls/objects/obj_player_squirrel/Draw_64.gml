draw_set_colour(c_white);


draw_text(50, 700, "health:" + string(player_hp));

if (global.leaf_counter == 9) {
	draw_text(300, 100,"All leaves collected!");	
	
}

if (global.stick_counter == 9) {
	draw_text(300, 50,"All sticks collected!");	
	
}

if (global.leaf_counter == 9 && global.stick_counter == 9) {
	draw_text (300, 0, "All objectives complete! Make it to the fox!!")
}

draw_set_colour(c_red);

draw_text(600, 200, "Heat:" + string(ceil(timer)));