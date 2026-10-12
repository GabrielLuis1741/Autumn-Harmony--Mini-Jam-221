// hit registration i think (pulled from enemy 1)
	if (attackcount >= attacktime) {
	other.p_hit(id, damage);
	attackcount = 0;	
}

if dir == -1 {
	sprite_index = spr_enemy_wolf_attack_left;
}
else if dir == 1 {
	sprite_index = spr_enemy_wolf_attack_right;
}

