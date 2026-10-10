image_xscale = 3.2;
image_yscale = 3.2;

// Input
move_x = keyboard_check(right_key) - keyboard_check(left_key);
var on_ground = place_meeting(x, y + 1, par_wall);


// Horizontal speed
var x_moveAmount;

x_moveAmount = move_x * mspeed;

// Horizontal collisions
if (!place_meeting(x + x_moveAmount, y, par_wall)) {
    x += x_moveAmount;
} else {
    while (!place_meeting(x + sign(x_moveAmount), y, par_wall)) {
        x += sign(x_moveAmount);
    }
}

// Vertical gravity
vsp += grav;
    if (on_ground && keyboard_check(vk_space)) vsp = -jump_speed;

// Vertical collisions
if (!place_meeting(x, y + vsp, par_wall)) {
    y += vsp;
} else {
    while (!place_meeting(x, y + sign(vsp), par_wall)) {
        y += sign(vsp);
    }
    vsp = 0;
}

//sprite animation index

//animations for when in the air
if (!on_ground){
	 image_speed = 0;
	  var max_check_dist = 500;
		var floor_y = y;
		while (!position_meeting(x, floor_y, par_wall) && floor_y < y + max_check_dist) {
        floor_y += 2; // Check downwards in steps
    }
	var distance_to_floor = floor_y - y;
    
    var air_percent = clamp(distance_to_floor / max_check_dist, 0, 1);
	if (keyboard_check(right_key)) {
		sprite_index = spr_fox_jump_right;
		image_index = (1 - air_percent) * (image_number - 1);
	} else if (keyboard_check(left_key)) {
		sprite_index = spr_fox_jump_left;
		image_index = (1 - air_percent) * (image_number - 1);
	} 
}

//animations for when on ground
else if (on_ground){ 	
	image_speed = 1;
	if (keyboard_check(right_key)){
		sprite_index = spr_fox_run_right;	
	} else if (keyboard_check(left_key)){
		sprite_index = spr_fox_run_left;	
	} else if (keyboard_check_released(right_key)){
		direction = 1;
		sprite_index = spr_fox_idle_right;
	} else if (keyboard_check_released(left_key)){
		direction = -1;
		sprite_index = spr_fox_idle_left;
	} else if (direction == 1){
		sprite_index = spr_fox_idle_right;
	} else if (direction == -1){
		sprite_index = spr_fox_idle_left;
	}
}
// Lose condition
if (player_hp <= 0) {
    room_goto(rm_end_game);
}