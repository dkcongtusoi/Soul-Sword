if place_meeting(x, y, obj_player){
	if !instance_exists(obj_textbox){
		instance_create_depth(x, y, -1, obj_textbox);
		obj_textbox._text = "The weight of a Living Soul is a heavy burden.";
		obj_textbox.duration = room_speed*4;
	}
	instance_destroy();
}