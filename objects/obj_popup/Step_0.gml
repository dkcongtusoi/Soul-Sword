if triggered and global.popup != noone and global.item != noone and !instance_exists(global.item) {
	instance_create_depth(x, y, depth, global.item);
}
