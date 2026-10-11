//Variables for pathing

dir = -1;
move = 0.9;
grav = 0.2;
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
attacktime = room_speed * 1.2;
hp = 20;


damage = 1;