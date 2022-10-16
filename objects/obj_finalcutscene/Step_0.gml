if instance_exists(obj_final_dl){
	if global.dialog_index == 4{
		image_index = 1;
	}
	if global.dialog_index == 16{
		image_index = 2;
	}
}	
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


if ending{	
	var layer_fx = layer_get_fx("Effect_4");
	fx_set_parameter(layer_fx, "g_Intensity", value);
	value = lerp(value, 1, 0.015);
	if value >= 0.98{
		image_alpha = lerp(image_alpha, 0, 0.02);
	}
}
