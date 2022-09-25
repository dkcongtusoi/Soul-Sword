if keyboard_check_released(ord("X")){
	dialog_next();
			
	if dialog_end(){
		global.isTalking = false;
		global.startDialogue = false;
		obj_honger_bamboo.already_talked_to = true;
		obj_blackbar.dialogue_done = true;
		obj_blackbar.dialogue_start = false;
		instance_destroy();
				
	}
}
if mouse_wheel_up(){
	offset += 5;
}
if mouse_wheel_down(){
	offset -= 5;
}
