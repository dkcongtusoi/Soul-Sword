if image_index == image_number - 1{
	image_speed = 0;
	image_alpha = 0;
	can_display_text = true;
	if alarm[0] < 0{
		alarm[0] = duration;
	}
}