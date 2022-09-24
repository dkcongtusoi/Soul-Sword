if instance_exists(obj_player){
	if obj_player.bbox_bottom < bbox_top {
		mask_index = spr_onewayplatform;		
	}else{
		mask_index = -1;
	}
} 
