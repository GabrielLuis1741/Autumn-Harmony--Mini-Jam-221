if (image_index == 1){
	exit;
}
image_index = 1;

ini_open("checkpoint ini");

ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);
ini_write_real("player", "hp", other.hp);
ini_write_real("player", "leaves", global.leaf_counter);
ini_write_real("player", "sticks", global.stick_counter);

ini_close();

