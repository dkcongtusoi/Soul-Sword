if place_meeting(x, y, obj_player){
	if !instance_exists(obj_textbox) and !global.displaying{
		instance_create_depth(x, y, -1, obj_textbox);
		global.displaying = true;
		obj_textbox._text = "So this is the bamboo village...";
		obj_textbox.duration = room_speed*4;
	}
	//instance_destroy();
}