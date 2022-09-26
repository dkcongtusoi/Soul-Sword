if obj_player.image_xscale > 0{
	image_angle = -39;
	anchor_x = obj_player.x - 25;
}
if obj_player.image_xscale < 0{
	image_angle = 39;
	anchor_x = obj_player.x + 25;
}

if obj_player.sprite_index == spr_QY_Idle{
	if obj_player.image_index == 0{
		offset = 0;
	}if obj_player.image_index == 1{
		offset = 2;
	}if obj_player.image_index == 2{
		offset = 3;
	}if obj_player.image_index == 3{
		offset = 2;
	}
}

anchor_y = obj_player.y - 80 + offset;


x = anchor_x;
y = anchor_y;