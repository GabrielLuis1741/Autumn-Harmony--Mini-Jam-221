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

if (keyboard_check(right_key)){
	sprite_index = spr_fox_run_right;	
} else if (keyboard_check(left_key)){
	sprite_index = spr_fox_run_left;	
} else if (keyboard_check_released(right_key)){
	sprite_index = spr_fox_idle_right;
}else if (keyboard_check_released(left_key)){
	sprite_index = spr_fox_idle_left;
}

// Lose condition
if (player_hp <= 0) {
    room_goto(rm_end_game);
}