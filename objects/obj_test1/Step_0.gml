if obj_popup.triggered = true{
	image_alpha = lerp(image_alpha, 1, 0.02);
	if image_alpha >= 0.99{
		image_index = 1;
	}
	
}