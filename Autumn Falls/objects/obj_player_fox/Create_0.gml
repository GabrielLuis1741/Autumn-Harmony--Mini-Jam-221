left_key = ord("A");
right_key = ord("D");
up_key = ord("W");
down_key = ord("S");
emp_bullet_key = ord("Q");

// Character orientation and sprite details

direction = 1;
sprite_index = spr_fox_sleep;

// Movement
move_x = 0;
vsp = 0;            // replaces built-in vspeed
grav = 0.07;
jump_speed = 4.05;  // was jspeed (1.35) * mspeed (3)
mspeed = 3;


// Health
player_hp = 18;
invincible = 0;

// Bite cooldown
fire_bite_cooldown = 0;
fire_tail_cooldown = 0;
fire_cooldown_bite_max = 67;
fire_cooldown_tail_max = 80;

p_hit = function(_id, _damage) {
    player_hp -= _damage;
    invincible = 1;
};