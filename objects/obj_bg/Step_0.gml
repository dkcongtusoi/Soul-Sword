if keyboard_check_pressed(vk_space){
	if image_index != 1{
		image_index = 1;
		alarm[1] = room_speed*2;
	}
}

//Dialogue Code
//if image_index == 1{
//	if alarm[0] < 0 and !is_showing {
//		alarm[0] = room_speed*2;
//	}
//}

//if is_finished{
//	if alarm[1] < 0{
//		alarm[1] = room_speed*1;
//	}
//}


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