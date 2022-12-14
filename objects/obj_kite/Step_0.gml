if !dialogue_done{
	if place_meeting(x, y, obj_player){
		image_xscale = 1.2;
		image_yscale = 1.2;	
		if obj_player.interact && !already_interact && global.canInteract{	
			already_interact = true;
			global.canInteract = false;
			camOffset = true;
			if !instance_exists(obj_blackbar){
				global.bar_size = 310;
				instance_create_depth(x, y, depth, obj_blackbar);
			}
		
			if itemDialogue != noone{
				obj_blackbar.chosenDialogue = itemDialogue;
			}
			obj_blackbar.dialogue_start = true;
		}
	}else{
		image_xscale = 1;
		image_yscale = 1;
	}
}else{
	obj_camera.offsetX = 0;
	camOffset = false;
	x = lerp(x, obj_player.x, 0.05);
	y = lerp(y, obj_player.y - obj_player.sprite_height/2, 0.05);
	image_xscale = lerp(image_xscale, 0, 0.05);
	if image_xscale <= 0.05{
		global.kitecollect = true;
		instance_destroy();
	}
}

if !instance_exists(obj_blackbar) && itemDialogue != noone && already_interact = true{
	dialogue_done = true;
}

if camOffset{
		obj_camera.offsetX = lerp(obj_camera.offsetX, display_get_gui_width*0.3333333, obj_camera.camSp);
}