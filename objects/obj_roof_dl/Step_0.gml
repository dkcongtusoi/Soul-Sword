
if can_display_text{
	str_len = string_length(dialog_get_text());
	
	//Have we finished typing out line?
	if(character_index >= str_len) {
		//Yes! If we hit X, go to next line
		if keyboard_check_released(ord("X")){
			character_index = 0;
			dialog_next();
			show_debug_message("next");
			if dialog_end(){
				obj_popup.triggered = false;
				obj_popup.showing = false;
				show_debug_message("destroy");
				instance_destroy();
			}	
		}
	} else {
		//We are still typing out...
		if (delta_time mod (room_speed * 0.1) == 0){
			character_index += choose(0.75, 1, 1.25, 1.5);
		}
		if keyboard_check_released(ord("X")){
			character_index = str_len;
			show_debug_message("type out");
		}
	}
	
	//------------------------------
	/*if !is_waiting_for_keypress{
		if (delta_time mod (room_speed * 0.1) == 0){
			character_index += choose(0.75, 1, 1.25, 1.5);
		}
		
		if keyboard_check_released(ord("X")){
			character_index = string_length(dialog_get_text());
		}
		
		if character_index >= string_length(dialog_get_text()){
			is_waiting_for_keypress = true;
		}
	} else {
		if keyboard_check_released(ord("X")){
			is_waiting_for_keypress = false;
			character_index = 0;
			dialog_next();
			
			if dialog_end(){
				obj_popup.triggered = false;
				obj_popup.showing = false;
				instance_destroy();
			}
		}
	}*/	
}