if global.startDialogue{
	position_botbar_y = lerp(position_botbar_y, position_botbar_y_end, 0.05);
	position_topbar_y = lerp(position_topbar_y, position_topbar_y_end, 0.05);
}
if dialogue_done{
	position_botbar_y = lerp(position_botbar_y, position_botbar_y_start, 0.05);
	position_topbar_y = lerp(position_topbar_y, position_topbar_y_start, 0.05);
}

if (abs(position_botbar_y - position_botbar_y_end) <= 5){
	if choosen_dialogue != noone and !instance_exists(choosen_dialogue){
		instance_create_depth(x, y, -1000, choosen_dialogue);
	}
}

if dialogue_done and (abs(position_botbar_y - position_botbar_y_start) <= 5){
	instance_destroy();
}

