if instance_exists(obj_final_dl){
	if global.dialog_index == 4{
		image_index = 1;
	}
	if global.dialog_index == 16{
		image_index = 2;
	}
}	

//if keyboard_check_pressed(vk_space){
//	if image_index < 2{
//		image_index ++;
//	}
//}

if image_index == 2 and !created{
	if keyboard_check_pressed(vk_right){
		instance_create_depth(x, y, depth, obj_ending_1);
		created = true;
		sprite_index = spr_freedom;
	}
	if keyboard_check_pressed(vk_left){
		instance_create_depth(x, y, depth, obj_ending_2);
		created = true;
		sprite_index = spr_retribution;
	}
}


#region QOL

if keyboard_check_pressed(ord("R")){
	if keyboard_check(vk_shift){
		game_restart();
	}else{
		room_restart();
	}
}

if keyboard_check_pressed(ord("F")){	
	if window_get_fullscreen(){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
	}
}


#endregion
