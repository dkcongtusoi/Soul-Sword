if follow_path{
	with inst_39BD239E{
		x = other.x + other.sprite_width/2;
		y = other.y;
	}
	with inst_48E16B4F{
		x = other.x - other.sprite_width/2 - sprite_width;
		y = other.y;
	}
	with inst_23C955E{
		x = other.x - other.sprite_width/2 - sprite_width;
		y = obj_player.y - obj_player.sprite_height;
	}
}