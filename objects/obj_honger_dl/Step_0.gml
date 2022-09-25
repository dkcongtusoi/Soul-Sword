//if can_display_text{
	//if !is_waiting_for_keypress{
		
	//	character_index += choose(0.75, 1, 1.25, 1.5);
		
	//	if keyboard_check_released(ord("X")){
	//		character_index = string_length(dialog_get_text());
	//	}
		
	//	if character_index >= string_length(dialog_get_text()){
	//		is_waiting_for_keypress = true;
	//	}
	//} else {
		if keyboard_check_released(ord("X")){
			//is_waiting_for_keypress = false;
			//character_index = 0;
			dialog_next();
			
			if dialog_end(){
				global.isTalking = false;
				global.startDialogue = false;
				obj_honger.already_talked_to = true;
				obj_blackbar.dialogue_done = true;
				obj_blackbar.dialogue_start = false;
				instance_destroy();
				
			}
		}
	//}	
//}

if mouse_wheel_up(){
	offset += 5;
}
if mouse_wheel_down(){
	offset -= 5;
}
