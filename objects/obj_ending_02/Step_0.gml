if keyboard_check_released(ord("F")){

	dialog_next();
			
	if dialog_end(){
		global.isTalking = false;
		global.startDialogue = false;
		obj_blackbar.dialogue_done = true;
		obj_blackbar.dialogue_start = false;
		instance_destroy();
				
	}
}