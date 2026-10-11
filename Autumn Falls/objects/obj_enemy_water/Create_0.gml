//Variables for pathing
damage = 50;
dir = -1;
move = 0;
grav = 0;
hspd = 0;
vspd = 0;


//damage variables (pulled from enemy 1)
b_hit = function(_id, _damage) {
	
	hp-=_damage
	
	if hp <= 0 {
		instance_destroy()
	}
	
	instance_destroy(_id);
}

s_hit = function(_id, _damage) {
	
	hp-=_damage
	
	if hp <= 0 {
		instance_destroy()
	}
	
	//instance_destroy(_id);
}

//attack relevant variables (pulled from enemy 1)
attackcount = 0
hp = 10;


damage = 1;