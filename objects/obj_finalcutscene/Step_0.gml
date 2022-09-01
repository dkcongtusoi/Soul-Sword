if keyboard_check_pressed(vk_space){
	if image_index < 2{
		image_index ++;
	}
}
if image_index == 2{
	if keyboard_check_pressed(vk_right){
		sprite_index = spr_freedom;
	}
	if keyboard_check_pressed(vk_left){
		sprite_index = spr_retribution;
	}
}

#region QOL

if keyboard_check_pressed(ord("R")){
	room_restart();
}

if keyboard_check_pressed(ord("F")){	
	if window_get_fullscreen(){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
	}
}


#endregion
