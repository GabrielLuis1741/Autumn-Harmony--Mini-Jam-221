b_hit = function(_id, _damage) {
	show_debug_message("Hit by bullet!")
}

// Check if the object we are hitting is a wall or a child of a wall
if (object_is_ancestor(other.object_index, par_wall) || other.object_index == par_wall) {
    exit; // Abort code instantly! Do not run s_hit on a wall.
}

// Otherwise, proceed with hitting the target safely
other.b_hit(id, _damage);
