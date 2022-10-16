if started{
	a = lerp(a, 0, 0.025);
}


if a <= 0.05{
	if room != Level3{
		global.canMove = true;
	}else{
		obj_finalcutscene_nodl.can_interact = true;
	}
	if a <= 0.008{
		instance_destroy();
	}
}