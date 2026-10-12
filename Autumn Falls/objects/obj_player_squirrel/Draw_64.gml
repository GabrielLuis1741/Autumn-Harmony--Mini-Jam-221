//draw_set_colour(c_white);

//draw_text(50, 700, "health:" + string(player_hp));

draw_sprite(spr_healthbarframe,-1,30,675)
draw_sprite(spr_meter,image_index, 390,30)
var _pct = (player_hp / player_init_hp) * 100;
draw_healthbar(120, 700, 320, 725, _pct, c_white, c_red, c_green, 0, true, true);
var _pct1 = (timer / timer_init) * 100;
draw_healthbar(525, 80, 725, 105, _pct1, c_white, c_teal, c_orange, 0, true, true); 
draw_sprite(spr_leaf_meter, image_index, 730, 60);
draw_sprite(spr_stick_meter, image_index, 860, 60);

draw_set_colour(c_maroon);
draw_set_font(fnt_menu);

if (room == rm_game_level1_squirrel) {
	draw_text(800,70, string(global.leaf_counter) + "/" + string(global.autumn_max))
	draw_text(915,70, string(global.stick_counter) + "/" + string(global.autumn_max))
} else if (room == rm_game_winter_level_squirrel) {
	draw_text(800,70, string(global.leaf_counter) + "/" + string(global.winter_max))
	draw_text(915,70, string(global.stick_counter) + "/" + string(global.winter_max))
};

// draw_text(50, 700, "health:" + string(player_hp));

if (global.leaf_counter == global.autumn_max && room == rm_game_level1_squirrel) {
	draw_sprite(spr_leafpopup,image_index, 550,150)
	
}

if (global.stick_counter == global.autumn_max  && room == rm_game_level1_squirrel) {
	draw_sprite(spr_stickpopup,image_index, 550,150)
	
}

if (global.leaf_counter == global.autumn_max && global.stick_counter == 9  && room == rm_game_level1_squirrel) {
	draw_sprite(spr_donepopup,image_index, 550,150)
}

//winter level

if (global.leaf_counter == global.winter_max && room == rm_game_winter_level_squirrel) {
	draw_sprite(spr_leafpopup,image_index, 550,150)	
	
}

if (global.stick_counter == global.winter_max  && room == rm_game_winter_level_squirrel) {
	draw_sprite(spr_stickpopup,image_index, 550,150)
	
}

if (global.leaf_counter == global.winter_max && global.stick_counter == global.winter_max  && room == rm_game_winter_level_squirrel) {
	draw_sprite(spr_donepopup,image_index, 550,150)
}

