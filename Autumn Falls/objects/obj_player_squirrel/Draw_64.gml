//draw_set_colour(c_white);

//draw_text(50, 700, "health:" + string(player_hp));

draw_sprite(spr_healthbarframe,-1,30,675)
draw_sprite(spr_meter,image_index,415,30)
var _pct = (player_hp / 50) * 100;
draw_healthbar(120, 700, 320, 725, _pct, c_black, c_red, c_green, 0, true, true);
//var _pct1 = (timer / 100) * 100;
//draw_healthbar(525, 50, 825, 75, _pct1, c_black, c_red, c_blue, 0, true, true); 
draw_sprite(spr_leaf, image_index, 675, 50);
draw_sprite(spr_stick, image_index, 725, 50);

draw_set_colour(c_white);


// draw_text(50, 700, "health:" + string(player_hp));

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