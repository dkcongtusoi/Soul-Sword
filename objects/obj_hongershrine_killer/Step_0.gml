if place_meeting(x, y, obj_honger_shrine){
	instance_destroy(obj_honger_shrine);
	global.isTalking = false;
	global.startDialogue = false;
	obj_blackbar.dialogue_done = true;
	obj_blackbar.dialogue_start = false;
	instance_destroy();
}