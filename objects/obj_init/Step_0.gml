if keyboard_check_pressed(ord("R")){
	if keyboard_check(vk_shift){
		game_restart();
	}else{
		room_restart();
	}
}

if keyboard_check_pressed(vk_f11){	
	if window_get_fullscreen(){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
	}
}

if keyboard_check_pressed(ord("M")){
	muted = !muted;
}

if muted {
	audio_master_gain(0);
}else{
	audio_master_gain(1);
}

