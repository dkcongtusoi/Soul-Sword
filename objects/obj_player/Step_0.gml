key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
interact = keyboard_check_pressed(ord("Z"));
dash = keyboard_check_pressed(ord("X"));
jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);



#region Movement
var dir = key_right - key_left
hsp = dir * walkSp;
vsp = vsp + grv;
//Dash



//Jump check
if place_meeting(x, y + 1, obj_collision){
	jumps = jumpsmax;
	isJump = true;
}

if jump and jumps > 0{
	jumps -= 1;
	vsp = -jumpSp;
}


//Horizontal Collision
if place_meeting(x + hsp, y, obj_collision){
	while !place_meeting(x + sign(hsp), y, obj_collision){
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if place_meeting(x, y + vsp, obj_collision){
	while !place_meeting(x, y + sign(vsp), obj_collision){
		y = y + sign(vsp);	
	}
	vsp = 0;
	isJump = false;

}
y = y + vsp;


#endregion

#region Animation
if !place_meeting(x, y + 1, obj_collision){
	image_speed = 0;
	if vsp > 0{
		image_index = 0;
	}else{
		image_index = 1;
	}
	sprite_index = spr_player_jump;
}
else{
	image_speed = 1;
	if hsp == 0{
		sprite_index = spr_player_idle;

	}else{
		sprite_index = spr_player_run;

	}
}

if hsp != 0{
	image_xscale = sign(hsp);
}

#endregion

#region Collectibles

var _soul = instance_place(x, y, obj_soul)

if _soul != noone{
	_soul.image_index = 1;
	instance_destroy(_soul);
}

var _star = instance_place(x, y, obj_star)

if _star != noone{
	_star.image_index = 1;
	if interact{
		obj_popup.triggered = true;
	}
}




#endregion