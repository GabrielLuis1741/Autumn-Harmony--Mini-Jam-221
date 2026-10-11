s_hit = function() {
	show_debug_message("Hit by slash!")
}

if (object_is_ancestor(other.object_index, par_wall) || other.object_index == par_wall) {
    exit; // Abort code instantly!
}

if (variable_instance_exists(other, "p_hit")) {
    other.s_hit(_id, _damage);
}