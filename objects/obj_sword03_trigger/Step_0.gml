if place_meeting(x, y, obj_player) && !has_created{
	has_created = true;
	if global.memories >= 6{
		if !instance_exists(obj_Sword03_dl){
			global.isTalking = true;
			if !instance_exists(obj_blackbar){
				global.bar_size = 310;
				with instance_create_depth(x, y, -10, obj_blackbar){
					chosenDialogue = obj_Sword03_dl;
					dialogue_start = true;
				}
			}
			instance_destroy();
		}
	}
	else{
		if !instance_exists(obj_notenoughsoul) and !already_talked_to{
			global.isTalking = true;
			if !instance_exists(obj_blackbar){
				global.bar_size = 310;
				with instance_create_depth(x, y, -10, obj_blackbar){
					chosenDialogue = obj_notenoughsoul;
					dialogue_start = true;
				}
			}
		}
	}
}