if keyboard_check_pressed(vk_space){
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

#region QOL

if keyboard_check_pressed(ord("R")){
	if keyboard_check(vk_shift){
		game_restart();
	}else{
		room_restart();
	}
}

if keyboard_check_pressed(ord("F")){	
	if window_get_fullscreen(){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
	}
}


#endregion
