if place_meeting(x, y + sign(vsp), obj_lilypad){
	if vsp > 0{
		while !place_meeting(x, y + sign(vsp), obj_lilypad){
			y += sign(vsp);
		}
		vsp = 0;
		//vsp_frac = 0;
	}
	//x += obj_lilypad.moveX;
	//y += obj_lilypad.moveY;
	x = obj_lilypad.x;
	y = obj_lilypad.y;
}