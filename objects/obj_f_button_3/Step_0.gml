if global.isTalking{
	visible = false;
}else{
	if instance_exists(obj_honger_shrine){
		if !obj_honger_shrine.already_talked_to{
			if obj_honger_shrine.visible{
				visible = true;
			}
		}
	}
}