display_set_gui_size(3840, 2160);

position_botbar_y = display_get_gui_height();
position_botbar_y_start = position_botbar_y;
position_botbar_y_end = position_botbar_y - 150;

position_topbar_y = 0;
position_topbar_y_start = position_topbar_y;
position_topbar_y_end = position_topbar_y + 150;


can_display_text = false;
dialogue_done = false;

character_index = 0;

is_waiting_for_keypress = false;


dialog_init();
dialog_add(spr_Honger_Idle, "Jiejie, Jiejie can you help me?");
dialog_add(spr_QY_DL, "I suppose. What's your name?");
dialog_add(noone, "Hong’er!");
dialog_add(noone, "Would you help me find my kite?");
dialog_add(noone, "It blew far towards the east");
dialog_add(noone, "I chased it all the way from my village far back that way.");

dialog_reset();