if keyboard_check_released(ord("F")){
	dialog_next();
			
	if dialog_end(){
		global.isTalking = false;
		global.startDialogue = false;
		obj_Sword03_trigger.already_talked_to = true;
		obj_Sword03_trigger.alarm[0] = room_speed*2;
		obj_blackbar.dialogue_done = true;
		obj_blackbar.dialogue_start = false;
		instance_destroy();
				
	}
}
