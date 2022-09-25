if !is_finished{
	image_alpha = lerp(image_alpha, 1, 0.025);
}
if image_alpha >= 0.9{
	if !instance_exists(obj_blackbar) && !is_finished{
		global.bar_size = 200;
		with instance_create_depth(x, y, depth, obj_blackbar){			
			chosenDialogue = obj_lv0_dialogue;
			dialogue_start = true;
			global.startDialogue = true;
		}
		
	}
}



//if !instance_exists(obj_blackbar) && is_finished && !global.startDialogue{
//	room_goto(Level1);
//}

if !instance_exists(obj_blackbar) && is_finished && !global.startDialogue{
	image_alpha = lerp(image_alpha, 0, 0.025);
	if image_alpha <= 0.02{
		room_goto(Level1);
	}
}

//Dialogue Code
//if image_index == 1{
//	if alarm[0] < 0 and !is_showing {
//		alarm[0] = room_speed*2;
//	}
//}

//if is_finished{
//	if alarm[1] < 0{
//		alarm[1] = room_speed*1;
//	}
//}