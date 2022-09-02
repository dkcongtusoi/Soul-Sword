if can_display_text{
	if !is_waiting_for_keypress{
		if (delta_time mod (room_speed * 0.1) == 0){
			character_index += 1.5;
		}
		
		if keyboard_check_pressed(ord("X")){
			character_index = string_length(dialog_get_text());
		}
		
		if character_index >= string_length(dialog_get_text()){
			is_waiting_for_keypress = true;
		}
	} else {
		if keyboard_check_pressed(ord("X")){
			is_waiting_for_keypress = false;
			character_index = 0;
			dialog_next();
			
			if dialog_end(){
				can_display_text = false;
			}
		}
	}
	
}
