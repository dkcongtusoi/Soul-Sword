var interact = keyboard_check_pressed(ord("F"));
if place_meeting(x, y, obj_player){
	
	if !instance_exists(obj_Honger_dl) and !already_talked_to and interact{
		global.isTalking = true;
		instance_create_depth(x, y, -10, obj_blackbar);
		
	}
	if instance_exists(obj_Honger_dl){
		//obj_Honger_dl.can_display_text = true;
		//global.isTalking = true;
	}
}else{
	
}

if is_happy{
	sprite_index = spr_Honger_Happy;
}