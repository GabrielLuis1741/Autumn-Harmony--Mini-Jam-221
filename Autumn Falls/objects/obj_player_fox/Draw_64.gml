//draw_set_colour(c_white);

//draw_text(50, 700, "health:" + string(player_hp));

draw_sprite(spr_healthbarframe,-1,30,675)

var _pct = (player_hp / 50) * 100;
draw_healthbar(120, 700, 320, 725, _pct, c_black, c_red, c_green, 0, true, true);
