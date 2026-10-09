if (instance_exists(obj_player)) {
    move_towards_point(obj_player.x-25, obj_player.y-35, enemy_speed);
}

if (attackcount < attacktime) {
    attackcount++;
}

