if place_meeting(x, y, obj_player){
	if !instance_exists(obj_textbox){
		instance_create_depth(x, y, -1, obj_textbox);
		obj_textbox._text = "The blade has awakened, it is roaring with fresh blood, searching for death.";
		obj_textbox.duration = room_speed*4;
	}
	instance_destroy();
}