if keyboard_check_pressed(vk_space){
	if image_index != 1{
		image_index = 1;
	}
}
if image_index == 1{
	if alarm[0] < 0 {
		alarm[0] = room_speed*2;
	}
}