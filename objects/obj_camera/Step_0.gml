view_camera[0] = camera;

x += (xTo - x)/25;
y += (yTo - y)/25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

if !global.isTalking{
	if zoomed_in{
		zoom_factor = lerp(zoom_factor, 4/3, zoomSp);

	}else{
		zoom_factor = lerp(zoom_factor, 1, zoomSp);
	}
}else{
	zoom_factor = lerp(zoom_factor, 0.5, zoomSp*1.5);
	if zoom_factor <= 0.51{
		global.startDialogue = true;
		if instance_exists(obj_blackbar){
			obj_blackbar.dialogue_start = true;
		}
		var current_x = xTo;
		var current_y = yTo;
	}
}

var size_x = ori_size_x*zoom_factor;
var size_y = ori_size_y*zoom_factor;

if follow != noone{
	if !global.startDialogue{
		xTo = follow.x + offsetX;
		yTo = follow.y - offsetY;
		if instance_exists(obj_blockout){
			instance_destroy(obj_blockout);
		}
	}else{
		x = current_x;
		y = current_y;
		if !instance_exists(obj_blockout){
			instance_create_depth(x - size_x/2 - 64, y - size_y/2, depth, obj_blockout,{
				image_yscale : room_height
			});
			instance_create_depth(x + size_x/2, y - size_y/2, depth, obj_blockout,{
				image_yscale : room_height
			});
			instance_create_depth(x - size_x/2, y -  size_y/2, depth, obj_blockout,{
				image_xscale: room_width
			});
		}
	}
	
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(size_x, size_y, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);