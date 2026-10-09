//movement variables
left_key = ord("A")
right_key = ord("D")
up_key = ord("W")
down_key = ord("S")
emp_bullet_key = ord("Q")

//player move speed, jump speed and health
move_x = 0;
move_y = 0;

//speeds (grav, jump and move) and hp
vspeed = 0;
jspeed = 1.35;
mspeed = 3;
player_hp = 50;


//weapon stuff from previous game, remove or repurpose later
fire_cooldown = 0;
fire_cooldown_max = 20;

bullet_speed = 20;
slash_speed = 1;

angle = 0;

p_hit = function(_id, _damage) {

    player_hp-=_damage

    if player_hp <= 0 {
        instance_destroy();
        room_goto(rm_end_game);

    }
}