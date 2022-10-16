a = lerp(a, 0, 0.015);
if a <= 0.2{
	if room != Level3{
		global.canMove = true;
	}else{
		obj_finalcutscene_nodl.can_interact = true;
	}
	if a <= 0.008{
		instance_destroy();
	}
}