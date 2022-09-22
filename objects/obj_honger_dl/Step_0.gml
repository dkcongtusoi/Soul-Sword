if global.startDialogue{
	position_botbar_y = lerp(position_botbar_y, position_botbar_y_end, 0.05);
	position_topbar_y = lerp(position_topbar_y, position_topbar_y_end, 0.05);
}
if dialogue_done{
	position_botbar_y = lerp(position_botbar_y, position_botbar_y_start, 0.05);
	position_topbar_y = lerp(position_topbar_y, position_topbar_y_start, 0.05);
}

if (abs(position_botbar_y - position_botbar_y_end) <= 5){
	can_display_text = true;
}
if dialogue_done and (abs(position_botbar_y - position_botbar_y_start) <= 2){
	instance_destroy();
}

if can_display_text{
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
				obj_honger.already_talked_to = true;
				dialogue_done = true;
				
			}
		}
	//}	
}