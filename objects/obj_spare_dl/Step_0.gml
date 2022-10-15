		if keyboard_check_pressed(ord("F")){
			//is_waiting_for_keypress = false;
			//character_index = 0;
			dialog_next();
			
			if dialog_end(){
				obj_honger_shrine.start_run = true;
				instance_destroy();
				
			}
		}