if keyboard_check_released(ord("F")){
	dialog_next();
			
	if dialog_end(){
		instance_create_depth(x, y, depth, obj_decision);
		obj_honger_shrine.already_talked_to = true;
		obj_blackbar.can_create = false;
		instance_destroy();
				
	}
}


/*
		global.isTalking = false;
		global.startDialogue = false;
		obj_honger_shrine.already_talked_to = true;
		obj_blackbar.dialogue_done = true;
		obj_blackbar.dialogue_start = false;
*/