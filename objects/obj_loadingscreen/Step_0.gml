if done{
	loading = false;
	can_display = false;
	a = lerp(a, 0, 0.025);
	if a <= 0.05{
		obj_menu.can_play = true;		
		instance_destroy();
	}
}