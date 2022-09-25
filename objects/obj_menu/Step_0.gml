var up, down, accept, back;

up	   = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
down   = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
accept = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);
back   = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_backspace);

if up {
	image_index--;
}

if down {
	image_index++;
}

if image_index == 0 and accept {
room_goto(Level0)	
}

if image_index == 1 and accept {
game_end()	
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