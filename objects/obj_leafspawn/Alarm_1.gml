max_leaf = irandom_range(1,10);

for (var i = 0; i <= max_leaf; i++){
	
	spawnX = random_range(x, x + sprite_width);
	
	spawnY = random_range(y, y + sprite_height);

	instance_create_depth(spawnX, spawnY, depth, obj_fallingleaves);
}
alarm[1] = room_speed*2.5;