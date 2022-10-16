if place_meeting(x, y, obj_player) && !has_created && can_interact{
	has_created = true;
	if !instance_exists(obj_Sword04_dl){
			global.isTalking = true;
			if !instance_exists(obj_blackbar){
				global.bar_size = 310;
				with instance_create_depth(x, y, -10, obj_blackbar){
					chosenDialogue = obj_Sword04_dl;
					dialogue_start = true;
				}
			}
			instance_destroy();
		}
}

if !instance_exists(obj_HongerShrine_Killer) && !instance_exists(obj_blackbar){
	can_interact = true;
}