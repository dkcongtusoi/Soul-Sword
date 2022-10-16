if keyboard_check_released(ord("F")){

	dialog_next();
			
	if dialog_end(){
		global.isTalking = false;
		global.startDialogue = false;
		obj_blackbar.dialogue_done = true;
		obj_blackbar.dialogue_start = false;
		obj_finalcutscene_nodl.ending = true;
		instance_destroy();
				
	}
}

	if global.dialog_index == 1{
			obj_finalcutscene_nodl.image_index = 1;
	}
	if global.dialog_index == 11{
			obj_finalcutscene_nodl.image_index = 2;
	}
	if global.dialog_index == 23{
			obj_finalcutscene_nodl.image_index = 3;
	}
