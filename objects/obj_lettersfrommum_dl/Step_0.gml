
if can_display_text{
	if !is_waiting_for_keypress{
		if (delta_time mod (room_speed * 0.1) == 0){
			character_index += choose(0.75, 1, 1.25, 1.5);
		}
		
		if keyboard_check_released(ord("F")){
			character_index = string_length(dialog_get_text());
		}
		
		if character_index >= string_length(dialog_get_text()){
			is_waiting_for_keypress = true;
		}
	} else {
		if keyboard_check_released(ord("F")){
			is_waiting_for_keypress = false;
			character_index = 0;
			dialog_next();
			
			if dialog_end(){
				obj_popup.triggered = false;
				obj_popup.showing = false;
				instance_destroy();
			}
		}
	}	
}