// Movement code
move_x = keyboard_check(right_key)-keyboard_check(left_key);


var x_moveAmount = move_x*mspeed;
var y_moveAmount = move_y*mspeed;

//grav modifier
vspeed += 0.07;

// Horizontal collisions 
if !place_meeting(x+x_moveAmount, y, par_wall) {
	x+=x_moveAmount;
} else {
	while(!place_meeting(x+sign(x_moveAmount), y, par_wall)){
		x+=sign(x_moveAmount);
	}
}

// Vertical collisions 
if !place_meeting(x, y+y_moveAmount, par_wall) {
	y+=y_moveAmount;
} else {
	while(!place_meeting(x, y+sign(y_moveAmount), par_wall)){
		y+=sign(y_moveAmount);
	}
}

//garivty collisions
if place_meeting(x,y+vspeed, par_wall){
	move_y = 0;
	vspeed = 0;
	if keyboard_check(vk_space) move_y = - jspeed
}

//Lose condition
if player_hp <= 0{
	room_goto(rm_end_game);
}