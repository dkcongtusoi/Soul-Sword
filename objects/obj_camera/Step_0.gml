if instance_exists(obj_player){
	view_x = obj_player.x - (camW / 2) + offset_x;
	view_y = obj_player.y - (camH/2) - offset_y ;
	var min_view_x = 0;
	var min_view_y = 0;

	var max_view_x = room_width - camera_get_view_width(view_camera[0]);
	var max_view_y = room_height - camera_get_view_height(view_camera[0]);

	view_x = lerp(view_x, obj_player.x, 0.02);
	view_y = lerp(view_y, obj_player.y, 0.02);

	view_x = clamp(view_x, min_view_x, max_view_x);
	view_y = clamp(view_y, min_view_y, max_view_y);
}else{
	view_x = 0;
	view_y = 0;
}


//Screenshake
if shake {

	camera_set_view_pos(view_camera[0], view_x + random_range(-range, range), view_y + random_range(-range, range));
}
if !shake {
	camera_set_view_pos(view_camera[0], view_x, view_y);
}