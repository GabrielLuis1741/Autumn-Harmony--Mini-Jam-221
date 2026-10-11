image_xscale = 2.2;
image_yscale = 2.2;

// Input
move_x = keyboard_check(right_key) - keyboard_check(left_key);
var on_ground = place_meeting(x, y + 1, par_wall);

// Dash timers and start (air dash allowed)
dash_cooldown = max(dash_cooldown - 1, 0);
dash_timer = max(dash_timer - 1, 0);

if (keyboard_check_pressed(vk_shift) && dash_cooldown <= 0) {
    dash_timer = 8;
    dash_cooldown = 60;
    dash_dir = (move_x != 0) ? sign(move_x) : sign(image_xscale);
}

// Horizontal speed
var x_moveAmount;
if (dash_timer > 0) {
    x_moveAmount = dash_dir * dash_speed;
} else {
    x_moveAmount = move_x * mspeed;
}

// Horizontal collisions
if (!place_meeting(x + x_moveAmount, y, par_wall)) {
    x += x_moveAmount;
} else {
    while (!place_meeting(x + sign(x_moveAmount), y, par_wall)) {
        x += sign(x_moveAmount);
    }
}

// Vertical: no gravity during a dash, normal gravity otherwise
if (dash_timer > 0) {
    vsp = 0;
} else {
    vsp += grav;
    if (on_ground && keyboard_check(vk_space)) vsp = -jump_speed;
}

// Vertical collisions
if (!place_meeting(x, y + vsp, par_wall)) {
    y += vsp;
} else {
    while (!place_meeting(x, y + sign(vsp), par_wall)) {
        y += sign(vsp);
    }
    vsp = 0;
}

//Sprite animation index

if (keyboard_check(right_key)){
	sprite_index = spr_squirrel_run_right;	
} else if (keyboard_check(left_key)){
	sprite_index = spr_squirrel_run_left;	
} else if (keyboard_check_released(right_key)){
	sprite_index = spr_squirrel_idle_right;
}else if (keyboard_check_released(left_key)){
	sprite_index = spr_squirrel_idle_left;
}


// Lose condition
if (player_hp <= 0) {
    room_goto(rm_end_game);
	
}