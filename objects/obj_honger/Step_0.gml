if place_meeting(x, y, obj_player){
	
	if !instance_exists(obj_Honger_dl){
		instance_create_depth(x, y, depth, obj_Honger_dl);
	}
	if instance_exists(obj_Honger_dl){
		obj_Honger_dl.can_display_text = true;
		global.isTalking = true;
	}
}else{
	
}