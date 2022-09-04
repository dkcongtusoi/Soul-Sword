display_set_gui_size(room_width/2, room_height/2);


position_bar_y = display_get_gui_height();
position_bar_y_end = position_bar_y - 150;

can_display_text = false;
is_waiting_for_keypress = false;

character_index = 0;

dialog_init();

dialog_add(noone, "RL: \"One last chance?");
dialog_add(noone, "You had a million to turn back. To justify your cruel actions.");
dialog_add(noone, "You have forsaken me, my love.");
dialog_add(noone, "Your devotion has cost you your life.");
dialog_add(noone, "You will follow me forever, your eyes will see nothing but death.");
dialog_add(noone, "You refuse to live for me, so you will die for me instead.\"   ");

dialog_add(noone, "QY: \"I will follow you forever, Ruo Lian.\"");

dialog_reset();
