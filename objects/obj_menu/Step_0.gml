if !audio_is_playing(SND_MENU_BGM) and can_play{
	audio_play_sound(SND_MENU_BGM,10,true)
}

var left, right, accept;

left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
accept = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

if menu == 0{
	obj_startbutton.hover = false;
	obj_exitbutton.hover = false;
	obj_controlbutton.hover = false;
}else if menu == 1{
	obj_startbutton.hover = false;
	obj_exitbutton.hover = false;
	obj_controlbutton.hover = true;
	if accept{
		
	}
}else if menu == 2{
	obj_startbutton.hover = true;
	obj_exitbutton.hover = false;
	obj_controlbutton.hover = false;
	if accept{
		room_goto(Level0);
	}
}else{
	obj_startbutton.hover = false;
	obj_exitbutton.hover = true;
	obj_controlbutton.hover = false;
	if accept{
		game_end();
	}
}

if left{
	if menu <= 1{
		menu = 3;
	}else{
		menu--;
	}
}
if right{
	if menu >= 3{
		menu = 1;
	}else{
		menu++;
	}
}