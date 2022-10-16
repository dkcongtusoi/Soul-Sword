if follow_path{
	path_speed = path_spd;
	if !started{
		started = true;
		path_start(path_name, path_speed, path_act, path_abso);
	}


	
}

if keyboard_check_pressed(ord("U")){
	image_speed = 0;
	follow_path = true;
	
}
if place_meeting(x, y, obj_player) and !reached_01{
	follow_path = true;
}

if keyboard_check_pressed(ord("K")){
	path_spd += 0.1;
}
if keyboard_check_pressed(ord("L")){
	path_spd -= 0.1;
}
if path_name == pth_lilypad{
	if path_position == 1{
		path_spd = 0;
		reached_01 = true;
	}
}

if reached_01 and !place_meeting(x, y, obj_soulorb){
	
	obj_trioriverrock.image_alpha = lerp(obj_trioriverrock.image_alpha, 0, 0.1);

	if !started_02{
		
		path_spd = 2;
		started_02 = true;
		path_name = pth_lilypad_2;
		path_start(pth_lilypad_2, path_spd, path_act, path_abso);
	}
}

if started_02{
	if path_position == 1{
		path_spd = 0;
		reached_02 = true;
	}
}

if reached_02{
	image_speed = 1;
	instance_destroy(inst_39BD239E);
	instance_destroy(inst_48E16B4F);
	instance_destroy(inst_23C955E);	
	inst_6017C0DB.x = 8612
	inst_6017C0DB.y = 4448
}