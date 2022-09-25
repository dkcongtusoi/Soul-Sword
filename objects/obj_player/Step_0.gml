if global.canMove{

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
interact = keyboard_check_pressed(ord("F"));
jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);

if obj_popup.showing{
	jump = 0;
}

//Height Check
//if !collision_line(x, y, x, y + line, obj_collision, 0, 1){	
//	isStunned = true;
//	cor = c_red
//}else{ cor = c_yellow}

var limiter = 1;
if isStunned && isGrounded{
	limiter = 0;
}else{
	limiter = 1;
}
#region Movement
var dir = key_right - key_left;

//Lock player's movement when starting to zoom in
//Unlock when dialogue starts
if global.isTalking && !global.startDialogue{
	jump = 0;
	dir = 0;
}

if !key_right or !key_left{
	if !isSlow{
		hsp = dir * walkSp * limiter;
	}else{
		hsp = dir * slowSp * limiter;
	}
}
vsp = vsp + grv;



//Jump check
if place_meeting(x, y + 1, obj_collision){
	jumps = jumpsmax;
	//isGrounded = true;
	isJump = false;
}
//else{
//	isGrounded = false;
//}

if jump and jumps > 0 and !isStunned{
	jumps -= 1;
	isJump = true;
	if !isSlow{
		vsp = -jumpSp;
	}else{
		vsp = -jumpSp/2;
	}
	if !audio_is_playing(snd_jump){
		audio_play_sound(snd_jump, 1, 0);
	}
	audio_stop_sound(snd_running);
}


//Horizontal Collision
if place_meeting(x + hsp, y, obj_collision){
	//Upward slopes
	yplus = 0;
	while (place_meeting(x + hsp, y - yplus, obj_collision) && yplus <= abs(slopeMutiplier*hsp)){
		yplus += 1;
	}
	if place_meeting(x + hsp,y - yplus,obj_collision){
		while !place_meeting(x + sign(hsp), y, obj_collision){
			x = x + sign(hsp);	
		}
		hsp = 0;
	}else{
		y -= yplus;
	}
	
}

if !obj_popup.showing x += hsp;

// Downward slopes
if !place_meeting(x, y, obj_collision) && vsp >= 0 && place_meeting(x, y + 2 + abs(hsp), obj_collision){
	while(!place_meeting(x, y + 1, obj_collision)){
		y += 1;
		}
	}

//Vertical Collision
if place_meeting(x, y + vsp, obj_collision){
	while !place_meeting(x, y + sign(vsp), obj_collision){
		y = y + sign(vsp);	
	}
	vsp = 0;

}
y = y + vsp;

isGrounded = place_meeting(x, y + max(1, vsp), obj_collision);

#endregion

#region Animation

if !key_left && !key_right && !key_down && !jump && !isStunned{
	sprite_index = spr_QY_Idle;
}
//Crouch timing
if isStunned && isGrounded{
	sprite_index = spr_QY_StartEnd;
	if alarm[2] < 0{
		alarm[2] = room_speed*1;
	}
}
if !isStunned{
//if isGrounded && isJump{
//	sprite_index = spr_QY_StartEnd;
//	if vsp <= -1 {
//		sprite_index = spr_QY_Jumping;
//	}
//	else if vsp > -1 and vsp < 1{
//		sprite_index = spr_QY_Peak;
//	}
//	else{
//		sprite_index = spr_QY_Falling;
//	}
//}
//else
if !isGrounded{
	if isJump{
		if vsp <= -5 {
			sprite_index = spr_QY_Jumping;
		}
		else if vsp > -5 and vsp < 13{
			sprite_index = spr_QY_Peak;
		}
		else{		
			sprite_index = spr_QY_Falling;
		}
	}else{
		//if vsp > -5 and vsp < 13{
		//	sprite_index = spr_QY_Peak;
		//}
		//else{		
		//	sprite_index = spr_QY_Falling;
		//}
		if vsp > 4 and vsp < 15{
			sprite_index = spr_QY_Peak;
		}else if vsp >= 15{
			sprite_index = spr_QY_Falling;
			
		}
	}
}else{
	if isSlow{
		image_speed = slowSp/walkSp;
	}else{
		image_speed = 1;
	}
	if hsp == 0{
		//audio_stop_sound(snd_running);
		if key_down{
			sprite_index = spr_QY_StartEnd;
		}
	}else{
		if !obj_popup.showing{
			sprite_index = spr_QY_Run;
			//if !audio_is_playing(snd_running){
			//	audio_play_sound(snd_running, 1, 1);
			//}
		}
	}
}
}

if isGrounded{
	if hsp != 0{
		if !audio_is_playing(snd_running){
				audio_play_sound(snd_running, 1, 1);
			}
	}else{
		audio_stop_sound(snd_running);
	}
}else{
	if vsp >= 10{
		audio_stop_sound(snd_running);
	}
}

if hsp == 0{
	if alarm[1] <0 {
		alarm[1] = room_speed*2;
	}
}else{
	alarm[1] = -1;
	if instance_exists(obj_camera){
		obj_camera.zoomed_in = false;
	}
}

if hsp != 0 and !obj_popup.showing{
	image_xscale = 0.35*sign(hsp);
}

#endregion

#region Collectibles

var _lotus = instance_place(x, y, obj_lotus)

if _lotus != noone{
	_lotus.image_index = 1;
	global.popup = _lotus.chosenSprite;
	global.item = _lotus.choosenItem;
	if interact{
		obj_popup.triggered = true;
		alarm[0] = room_speed;
	}
	

}

if obj_popup.showing{
	if interact and !instance_exists(global.item){
		obj_popup.triggered = false;
		obj_popup.showing = false;
	}
}



#endregion

#region Debug

if keyboard_check_pressed(ord("L")){
	isSlow = !isSlow;
}


#endregion
show_debug_message(vsp);

}

audio_listener_position(x, y, 0);
if room == Level1{
dist = point_distance(x, y, obj_emitterriver.x, obj_emitterriver.y);
dist = point_distance(x, y, obj_emittermountain.x, obj_emittermountain.y);
dist = point_distance(x, y, obj_emitterwindyclouds.x, obj_emitterwindyclouds.y);
}