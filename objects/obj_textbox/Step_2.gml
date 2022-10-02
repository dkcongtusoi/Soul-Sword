if obj_player.sprite_index == spr_QY_Idle{
	x = obj_player.x;
	y = obj_player.y - obj_player.sprite_height;
}else if obj_player.sprite_index == spr_QY_Run{
	if obj_player.image_xscale > 0{
		x = obj_player.x + 30;
		y = obj_player.y - obj_player.sprite_height + 10;
	}
	if obj_player.image_xscale < 0{
		x = obj_player.x - 30;
		y = obj_player.y - obj_player.sprite_height + 10;
	}
}else if obj_player.sprite_index == spr_QY_StartEnd{
	if obj_player.image_xscale > 0{
		x = obj_player.x + 20;
		y = obj_player.y - obj_player.sprite_height + 35;
	}
	if obj_player.image_xscale < 0{
		x = obj_player.x - 20;
		y = obj_player.y - obj_player.sprite_height + 35;
	}
}else{
	if obj_player.image_xscale > 0{
		x = obj_player.x + 20;
		y = obj_player.y - obj_player.sprite_height;
	}
	if obj_player.image_xscale < 0{
		x = obj_player.x - 20;
		y = obj_player.y - obj_player.sprite_height;
	}	
}