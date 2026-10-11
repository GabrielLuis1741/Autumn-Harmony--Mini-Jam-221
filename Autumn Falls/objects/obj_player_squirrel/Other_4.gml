if (file_exists("checkpoint.ini")){
	ini_open("checkpoint ini");

	x = ini_write_real("player", "x", x);
	y = ini_write_real("player", "y", y);
	hp = ini_write_real("player", "hp", hp);
	global.leaf_counter =  ini_write_real("player", "leaves", global.leaf_counter);
	global.stick_counter = ini_write_real("player", "sticks", global.stick_counter);
	
	ini_close();
}

