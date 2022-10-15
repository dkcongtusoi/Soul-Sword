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
if keyboard_check_pressed(ord("K")){
	path_spd += 0.1;
}
if keyboard_check_pressed(ord("L")){
	path_spd -= 0.1;
}

if path_position == 1{
	path_spd = 0;
	reached = true;
}

if reached{
	image_speed = 1;
	instance_destroy(inst_39BD239E);
	instance_destroy(inst_48E16B4F);
	instance_destroy(inst_23C955E);
}