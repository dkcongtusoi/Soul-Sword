var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var interact = keyboard_check_pressed(ord("F"));

if key_left{
	color1 = #FF0909;
	scale1 = 1.2;
	color2 = #7F7F7F;
	scale2 = 1;
	can_confirm = true;
	last_choice = 1;
}
if key_right{
	color2 = #0A74FF;
	scale2 = 1.2;
	color1 = #7F7F7F;
	scale1 = 1;	
	can_confirm = true;
	last_choice = 2;
}

if can_confirm and interact{
	if last_choice == 1{
		global.ending = 3;
		if !instance_exists(obj_refuse_dl){
			obj_finalcutscene_nodl.image_index = 5;
			instance_create_depth(x, y, depth, obj_refuse_dl);
		}
	}
	if last_choice == 2{
		global.ending = 4;
		if !instance_exists(obj_accept_dl){
			obj_finalcutscene_nodl.image_index = 4;
			instance_create_depth(x, y, depth, obj_accept_dl);
		}
	}
	can_confirm = false;
	can_option = false;
	instance_destroy();
}