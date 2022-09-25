if global.isTalking{
	visible = false;
}else{
	if instance_exists(obj_honger){
		if !obj_honger.already_talked_to{
		visible = true;
		}
	}
	if instance_exists(obj_honger_bamboo){
		if !obj_honger_bamboo.already_talked_to{
			visible = true;
		}
	}
}