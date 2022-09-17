key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
interact = keyboard_check_pressed(ord("Z"));
if !obj_popup.showing jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);



#region Movement
var dir = key_right - key_left
if !isSlow{
	hsp = dir * walkSp;
}else{
	hsp = dir * slowSp;
}
vsp = vsp + grv;

//Dash



//Jump check
if place_meeting(x, y + 1, obj_collision){
	jumps = jumpsmax;
	isJump = true;
}

if jump and jumps > 0{
	jumps -= 1;
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
	isJump = false;

}
y = y + vsp;


#endregion

#region Animation
//if !place_meeting(x, y + 1, obj_collision){
//	image_speed = 0;
//	if vsp > 0{
//		image_index = 0;
//	}else{
//		image_index = 1;
//	}
//	sprite_index = spr_player_jump;
//}
//else{
//	if isSlow{
//		image_speed = slowSp/walkSp;
//	}else{
//		image_speed = 1;
//	}
//	if hsp == 0{
//		sprite_index = spr_QY_Idle;
//		audio_stop_sound(snd_running);

//	}else{
//		if !obj_popup.showing{
//			sprite_index = spr_player_run;
//			if !audio_is_playing(snd_running){
//				audio_play_sound(snd_running, 1, 1);
//			}
//		}
//	}
//}

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
	image_xscale = 0.15*sign(hsp);
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

#region QOL

if keyboard_check_pressed(ord("R")){
	if keyboard_check(vk_shift){
		game_restart();
	}else{
		room_restart();
	}
}

if keyboard_check_pressed(ord("F")){	
	if window_get_fullscreen(){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
	}
}

if keyboard_check_pressed(ord("L")){
	isSlow = !isSlow;
}

if keyboard_check_pressed(ord("M")){
	muted = !muted;
}

if muted {
	audio_master_gain(0);
}else{
	audio_master_gain(1);
}

#endregion