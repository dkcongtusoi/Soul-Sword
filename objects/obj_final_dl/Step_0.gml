position_bar_y = lerp(position_bar_y, position_bar_y_end, 0.2);

if (abs(position_bar_y - position_bar_y_end) <= 5){
	can_display_text = true;
}

if can_display_text{
	if !is_waiting_for_keypress{
		if (delta_time mod (room_speed*0.1) == 0){
			character_index += 1.25;
		}
		if keyboard_check_pressed(ord("F")){
			character_index = string_length(dialog_get_text());
		}
		
		if character_index >= string_length(dialog_get_text()){
			is_waiting_for_keypress = true;
		}
	}else{
		if keyboard_check_pressed(ord("F")){
			is_waiting_for_keypress = false;
			character_index = 0;
			dialog_next();
			
			if dialog_end(){
				instance_destroy();
			}
		}
	}
}