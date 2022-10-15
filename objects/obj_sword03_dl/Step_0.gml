//if can_display_text{
//	if !is_waiting_for_keypress{
		
//		character_index += choose(1.5, 2, 1.75);
//		//character_index += 2;
		
//		if keyboard_check_released(ord("F")){
//			character_index = string_length(dialog_get_text());
//		}
		
//		if character_index >= string_length(dialog_get_text()){
//			is_waiting_for_keypress = true;
//		}
//	} else {
		if keyboard_check_released(ord("F")){
//			is_waiting_for_keypress = false;
//			character_index = 0;
			dialog_next();
			
			if dialog_end(){
				global.isTalking = false;
				global.startDialogue = false;
				obj_blackbar.dialogue_done = true;
				obj_blackbar.dialogue_start = false;
				obj_honger_shrine.visible = true;
				instance_destroy();
				
			}
		}
//	}	
//}
