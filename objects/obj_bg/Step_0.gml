if keyboard_check_pressed(vk_space){
	if image_index != 1{
		image_index = 1;
	}
}
if image_index == 1{
	if alarm[0] < 0 {
		alarm[0] = room_speed*2;
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