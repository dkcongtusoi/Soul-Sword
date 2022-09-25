if global.isTalking{
	visible = false;
}else{
	if instance_exists(obj_honger){
		if !obj_honger.already_talked_to{
			visible = true;
		}
	}
}