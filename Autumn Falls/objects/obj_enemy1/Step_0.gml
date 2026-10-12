if (instance_exists(obj_player)) {
    move_towards_point(obj_player.x-25, obj_player.y-35, enemy_speed);
	
}

if (attackcount < attacktime) {
    attackcount++;
}

//wall collision
// Check if next enemy step will overlap wall
if (place_meeting(x + hspeed, y + vspeed, par_wall)) {
    
    // Slide hor if vert blocked
    if (!place_meeting(x + hspeed, y, par_wall)) {
        vspeed = 0; 
    } 
    // Slide vert if hor blocked
    else if (!place_meeting(x, y + vspeed, par_wall)) {
        hspeed = 0; 
    } 
    //stop if stuck on corner
    else {
        hspeed = 0;
        vspeed = 0;
    }
}
