//if (mouse_check_button(mb_right)) {
//	if (fire_cooldown <= 0) {

if (sprite_index == spr_fox_bite_right || sprite_index == spr_fox_tailswipe_right){
	sprite_index = spr_fox_idle_right;
} else if (sprite_index == spr_fox_bite_left || sprite_index == spr_fox_tailswipe_left)
{
	sprite_index = spr_fox_idle_left;
}