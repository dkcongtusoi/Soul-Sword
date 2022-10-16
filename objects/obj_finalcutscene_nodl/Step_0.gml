//if keyboard_check_pressed(ord("F")) && can_interact{
//	if image_index < image_number -1{
//		image_index ++;
//	}
	
//}
//if image_index == image_number - 1{
//	if keyboard_check_pressed(vk_left){	
//		sprite_index = spr_freedom
//	}
//	if keyboard_check_pressed(vk_right){	
//		sprite_index = spr_retribution
//	}
//}

if !instance_exists(obj_blackbar) and can_interact and !created{
	created = true;
	global.bar_size = 310;
	with instance_create_depth(x, y, depth, obj_blackbar){
		if global.ending == 1{
			chosenDialogue = obj_ending_01;
			dialogue_start = true;
		}
		else if global.ending == 2{
			chosenDialogue = obj_ending_02;
			dialogue_start = true;
		}
	}	
}

if ending{	
	var layer_fx = layer_get_fx("Effect_4");
	fx_set_parameter(layer_fx, "g_Intensity", value);
	value = lerp(value, 1, 0.015);
	if value >= 0.98{
		image_alpha = lerp(image_alpha, 0, 0.02);
		if image_alpha <= 0.005{
			game_end();
		}
	}
}