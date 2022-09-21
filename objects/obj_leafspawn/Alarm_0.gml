spawnX = random_range(x, x + sprite_width);
spawnY = random_range(y, y + sprite_height);

instance_create_depth(spawnX, spawnY, depth, obj_fallingleaves);

alarm[0] = room_speed*0.5;