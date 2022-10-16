if keyboard_check_released(ord("F")){

	dialog_next();
			
	if dialog_end(){
		instance_create_depth(x, y, depth, obj_decision_cutscene);
		obj_blackbar.can_create = false;
		instance_destroy();				
	}
}

if !instance_exists(obj_decision_cutscene){
	if global.dialog_index == 1{
			obj_finalcutscene_nodl.image_index = 1;
	}
	if global.dialog_index == 10{
			obj_finalcutscene_nodl.image_index = 2;
	}
	//if global.dialog_index >= 20{
	//		obj_finalcutscene_nodl.image_index = 4;
	//}
}