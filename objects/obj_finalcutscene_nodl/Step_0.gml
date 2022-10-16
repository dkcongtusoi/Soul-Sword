if keyboard_check_pressed(ord("F")) && can_interact{
	if image_index < image_number -1{
		image_index ++;
	}
	
}
if image_index == image_number - 1{
	if keyboard_check_pressed(vk_left){	
		sprite_index = spr_freedom
	}
	if keyboard_check_pressed(vk_right){	
		sprite_index = spr_retribution
	}
}
