var interact = keyboard_check_pressed(ord("F"));
if collision_circle(x, y - sprite_height/2, rad, obj_player, 1, 0){
	if !instance_exists(obj_F_Button) && !already_talked_to && !global.isTalking{
		instance_create_depth(x, bbox_top - 25, depth, obj_F_Button,{	
			image_xscale : 0.05,
			image_yscale : 0.05
		});
	}
	if !instance_exists(obj_Honger_Bamboo_dl) and !already_talked_to and interact{
		global.isTalking = true;
		if !instance_exists(obj_blackbar){
			global.bar_size = 310;
			with instance_create_depth(x, y, -10, obj_blackbar){
				chosenDialogue = obj_Honger_Bamboo_dl;
				dialogue_start = true;				
			}
		}
		is_happy = true;
	}
}else{
	instance_destroy(obj_F_Button);
}

if is_happy{
	sprite_index = spr_Honger_Happy;
	if x < obj_player.x{
		image_xscale = -0.35;
	}
	if x > obj_player.x{
		image_xscale = 0.35;
	}
}else{
	sprite_index = spr_Honger_Idle;
}