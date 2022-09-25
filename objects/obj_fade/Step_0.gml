a = lerp(a, 0, 0.015);
if a <= 0.2{
	global.canMove = true;
	if a <= 0.015{
		instance_destroy();
	}
}