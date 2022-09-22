if global.startDialogue{
	position_botbar_y = lerp(position_botbar_y, position_botbar_y_end, 0.05);
	position_topbar_y = lerp(position_topbar_y, position_topbar_y_end, 0.05);
}
if dialogue_done{
	position_botbar_y = lerp(position_botbar_y, position_botbar_y_start, 0.05);
	position_topbar_y = lerp(position_topbar_y, position_topbar_y_start, 0.05);
}

if (abs(position_botbar_y - position_botbar_y_end) <= 5){
	if !instance_exists(obj_Honger_dl){
		instance_create_depth(x, y, -1000, obj_Honger_dl);
	}
}

if dialogue_done and (abs(position_botbar_y - position_botbar_y_start) <= 0){
	instance_destroy();
}

