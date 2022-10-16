var interact = keyboard_check_pressed(ord("F"));
if collision_circle(x, y - sprite_height/2, rad, obj_player, 1, 0){
	if !instance_exists(obj_F_Button_3) && !already_talked_to && !global.isTalking{
		instance_create_depth(x, bbox_top - 25, depth, obj_F_Button_3,{	
			image_xscale : 0.05,
			image_yscale : 0.05
		});
	}
	if !instance_exists(obj_Honger_shrine_nokite_dl) and !instance_exists(obj_Honger_shrine_yeskite_dl) and !already_talked_to and interact{
		global.isTalking = true;
		if !instance_exists(obj_blackbar){
			global.bar_size = 310;
			with instance_create_depth(x, y, -10, obj_blackbar){
				if !global.kitecollect{ 
					chosenDialogue = obj_Honger_shrine_nokite_dl;					
				}else{
					chosenDialogue = obj_Honger_shrine_yeskite_dl;
					is_happy = true;
				}
				dialogue_start = true;
			}
		}
		
	}
}else{
	instance_destroy(obj_F_Button_3);
}

if is_happy and !start_run{
	sprite_index = spr_Honger_Happy;
	if x < obj_player.x{
		image_xscale = -0.35;
	}
	if x > obj_player.x{
		image_xscale = 0.35;
	}
}

if start_run{
	x -= spd;
	sprite_index = spr_Honger_Run;
	image_xscale = -0.35;	
}

if killed{	
	if !instance_exists(obj_blackscreen) and !instance_exists(obj_blackbar){
		instance_create_depth(x, y, depth, obj_blackscreen);
		killed = false;
		}					
}