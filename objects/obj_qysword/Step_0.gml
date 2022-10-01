if obj_player.sprite_index == spr_QY_Idle{
	if obj_player.image_xscale > 0{
		image_angle = -39;
		anchor_x = obj_player.x - 25;
	}
	if obj_player.image_xscale < 0{
		image_angle = 39;
		anchor_x = obj_player.x + 25;
	}
	anchor_y = obj_player.y - 80 + offset;
	
	image_index = obj_player.image_index;
	if sign(obj_player.image_xscale) == 1{
		sprite_index = spr_QYSword_L;
	}
	if sign(obj_player.image_xscale) == -1{
		sprite_index = spr_QYSword_R;
	}
}
else{
	image_index = 0;
	image_speed = 0;
	if obj_player.image_xscale > 0{
		image_angle = -30;
		anchor_x = obj_player.x + 13;
		anchor_y = obj_player.y - 130;
	}
	if obj_player.image_xscale < 0{
		image_angle = 30;
		anchor_x = obj_player.x - 13;
		anchor_y = obj_player.y - 130;
	}	
}




x = anchor_x;
y = anchor_y;

show_debug_message(sign(obj_player.image_xscale))