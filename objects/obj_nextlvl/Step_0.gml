if place_meeting(x, y, obj_player){
	if instance_exists(obj_counter){
		if obj_counter.current_soul >= required_soul{
			room_goto(roomlvl);
		}
	}else{
		room_goto(roomlvl);
	}
}