var up, down, accept, back;

up	   = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
down   = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
accept = keyboard_check_pressed(vk_space);
back   = keyboard_check_pressed(ord("D"));

if up {
	image_index--;
}

if down {
	image_index++;
}

if image_index = 0 and accept {
room_goto(Level0)	
}
	   
if image_index = 1 and accept {
room_goto(Level1)	
}

if image_index = 2 and accept {
room_goto(Level2)	
}

if image_index = 3 and accept {
room_goto(Level3)	
}

if image_index = 4 and accept {
room_goto(Level4)	
}

if image_index = 5 and accept {
game_end()	
}