var camID = view_camera[0];
if instance_exists(obj_player){
	
	var camX = camera_get_view_x(camID);
	var camY = camera_get_view_y(camID);
	
	var size_x = ori_size_x * zoom_factor;
	var size_y = ori_size_y * zoom_factor;
	
	camera_set_view_size(camID, size_x, size_y);
	
	var camW = camera_get_view_width(camID);
	var camH = camera_get_view_height(camID);	
	if !global.isTalking{
	if zoomed_in{
		zoom_factor = lerp(zoom_factor, 1, zoomSp);

		}else{
			zoom_factor = lerp(zoom_factor, 4/3, zoomSp);
		}
	}
	else{
		zoom_factor = lerp(zoom_factor, 0.5, zoomSp*1.5);
		if zoom_factor <= 0.51{
			global.startDialogue = true;
			var current_camX = camX;
			var current_camY = camY;
		}
	}

	var view_x = obj_player.x - (camW div 2) - sign(obj_player.hsp)*offset_x;
	var view_y = obj_player.y - (camH div 2) - offset_y ;
	
	var min_view_x = 0;
	var min_view_y = 0;

	var max_view_x = room_width - camW;
	var max_view_y = room_height - camH;
	
	view_x = clamp(view_x, min_view_x, max_view_x);
	view_y = clamp(view_y, min_view_y, max_view_y);
	
	if !global.startDialogue{
		camX = lerp(camX, view_x, camSp);
		camY = lerp(camY, view_y, camSp);
		if instance_exists(obj_blockout){
			instance_destroy(obj_blockout);
		}
	}else{
		camX = current_camX;
		camY = current_camY;
		if !instance_exists(obj_blockout){
			instance_create_depth(camX, camY, depth, obj_blockout,{
				image_xscale : camW
			});
			instance_create_depth(camX - 64, camY, depth, obj_blockout,{
				image_yscale : camH
			});
			instance_create_depth(camX + camW, camY, depth, obj_blockout,{
				image_yscale : camH
			});
		}
	}
	
}else{
	camX = 0;
	camY = 0;
}


//Screenshake
if shake {

	camera_set_view_pos(camID, camX + random_range(-range, range), camY + random_range(-range, range));
}
if !shake {
	camera_set_view_pos(camID, camX, camY);
	
}
