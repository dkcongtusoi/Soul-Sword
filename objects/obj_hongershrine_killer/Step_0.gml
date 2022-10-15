if place_meeting(x, y, obj_honger_shrine){
	instance_destroy(obj_honger_shrine);
	global.isTalking = false;
	global.startDialogue = false;
	//obj_honger.already_talked_to = true;
	obj_blackbar.dialogue_done = true;
	obj_blackbar.dialogue_start = false;
	instance_destroy(inst_4D21B722);
	instance_destroy(inst_3B4ADEEF);
	instance_destroy();
}