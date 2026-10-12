left_key = ord("A");
right_key = ord("D");
up_key = ord("W");
down_key = ord("S");
emp_bullet_key = ord("Q");

// Character orientation and sprite details

direction = 1;
sprite_index = spr_squirrel_idle_right;


// Movement
move_x = 0;
vsp = 0;            // replaces built-in vspeed
grav = 0.07;
jump_speed = 4.05;  // was jspeed (1.35) * mspeed (3)
mspeed = 3;

// Health
player_init_hp = 3;
player_hp = 3;
invincible = 0;

// Dash
dash_timer = 0;
dash_cooldown = 0;
dash_speed = 12;
dash_dir = 1;

//leaf and stick objectives
global.leaf_counter = 0;
global.new_leaf_counter = 1;
global.stick_counter = 0;
global.new_stick_counter = 1;
global.autumn_max = 9;
global.winter_max = 5;


p_hit = function(_id, _damage) {
    player_hp -= _damage;
    invincible = 1;
};

timer_init = 100;
timer = 100;

alarm[1] = room_speed * timer;
