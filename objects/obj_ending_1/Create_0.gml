display_set_gui_size(room_width/2, room_height/2);


position_bar_y = display_get_gui_height();
position_bar_y_end = position_bar_y - 150;

can_display_text = false;
is_waiting_for_keypress = false;

character_index = 0;

dialog_init();

dialog_add(noone, "RL: \"If you really love me, you would let me go. My freedom is yours, so take it and live for me.\"");

dialog_reset();
