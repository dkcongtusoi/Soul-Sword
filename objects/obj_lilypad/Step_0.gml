if follow_path{
	path_speed = path_spd;
	if !started{
		started = true;
		path_start(path_name, path_speed, path_act, path_abso);
	}

	
}

if keyboard_check_pressed(ord("U")){
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
}
