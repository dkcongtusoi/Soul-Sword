var up, down, accept, back;

up	   = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
down   = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
accept = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);
back   = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_backspace);

if accept room_goto(Level0);