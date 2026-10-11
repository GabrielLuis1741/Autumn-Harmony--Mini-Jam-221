// hit registration i think (pulled from enemy 1)
	if (attackcount >= attacktime) {
	other.p_hit(id, damage);
	attackcount = 0;	
}


