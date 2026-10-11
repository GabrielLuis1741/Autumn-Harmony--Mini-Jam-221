//move, gravity and collisions

hspd = dir * move;
vspd += grav;

// Horizontal collisions 
if (place_meeting(x+hspd, y, par_wall)) {
	while(!place_meeting(x + sign(hspd), y, par_wall)){
		x += sign(hspd);
	}
	hspd = 0;
	
	dir *= -1;
}
x += hspd;

// Vertical collisions 

	
if (place_meeting(x, y+vspd, par_wall)) {
	while(!place_meeting(x, y+sign(vspd), par_wall)){
		y += sign(vspd);
	}
	vspd = 0;
	
}

y += vspd;

// attack related (pulled from enemy 1)
if (attackcount < attacktime) {
    attackcount++;
}