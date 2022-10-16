if !total_black{
	position_y1 = lerp(position_y1, display_get_gui_height()/2 + 20, 0.08);
	position_y2 = lerp(position_y2, display_get_gui_height()/2 - 20, 0.08);
}

if abs(position_y1 -  display_get_gui_height()/2) <= 5{
	total_black = true;
	position_y1 = display_get_gui_height()/2;
	position_y2 = display_get_gui_height()/2;
}

if total_black{
	if !instance_exists(obj_swordslash) and !has_created{
		has_created = true;
		instance_create_depth(x, y, depth - 10, obj_swordslash);
		instance_destroy(obj_honger_shrine);
		if !instance_exists(obj_blood){
			instance_create_depth(x, y, depth, obj_blood);
		}
	}
	if !instance_exists(obj_swordslash) and has_created{
		alpha = lerp(alpha, 0, 0.015);
	}
}

if alpha <= 0.05{
	if !instance_exists(obj_Sword02_dl){
		global.isTalking = true;
		if !instance_exists(obj_blackbar){
			global.bar_size = 310;
			with instance_create_depth(x, y, -10, obj_blackbar){
				chosenDialogue = obj_Sword02_dl;
				dialogue_start = true;
			}
		}
	}
	instance_destroy();
}

