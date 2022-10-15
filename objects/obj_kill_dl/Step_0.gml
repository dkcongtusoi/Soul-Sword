		if keyboard_check_pressed(ord("F")){
			//is_waiting_for_keypress = false;
			//character_index = 0;
			dialog_next();
			
			if dialog_end(){
				global.isTalking = false;
				global.startDialogue = false;
				//obj_honger.already_talked_to = true;
				obj_blackbar.dialogue_done = true;
				obj_blackbar.dialogue_start = false;
				instance_destroy();
				
			}
		}