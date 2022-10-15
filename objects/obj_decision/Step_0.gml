if obj_player.key_left{
	color1 = #FF0909;
	scale1 = 1.2;
	color2 = #7F7F7F;
	scale2 = 1;
	can_confirm = true;
	last_choice = 1;
}
if obj_player.key_right{
	color2 = #0A74FF;
	scale2 = 1.2;
	color1 = #7F7F7F;
	scale1 = 1;	
	can_confirm = true;
	last_choice = 2;
}

if can_confirm and obj_player.interact{
	if last_choice == 1{
		global.ending = 1;
		if !instance_exists(obj_kill_DL){
			instance_create_depth(x, y, depth, obj_kill_DL);
		}
	}
	if last_choice == 2{
		global.ending = 2;
		if !instance_exists(obj_spare_DL){
			instance_create_depth(x, y, depth, obj_spare_DL);
		}
	}
	can_confirm = false;
	can_option = false;
	instance_destroy();
}