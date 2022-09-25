if keyboard_check_released(ord("X")){
	if obj_BG.image_index < obj_BG.image_number - 1{
		obj_BG.image_index++;
		dialog_next();			
		if dialog_end(){
			obj_blackbar.dialogue_done = true;
			global.startDialogue = false;
			obj_BG.is_finished = true;
			instance_destroy();
				
		}
	}

	
}