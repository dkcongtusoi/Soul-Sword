if obj_BG.turn = true{
	visible = true;
	image_alpha = lerp(image_alpha, 1, 0.05);
}

if image_alpha >= 0.98{
	image_index = 1;
}
if image_index == 1 and keyboard_check_pressed(vk_space){
	room_goto(Level1);
}