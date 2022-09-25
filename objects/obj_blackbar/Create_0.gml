display_set_gui_size(3840, 2160);


position_botbar_y = display_get_gui_height();
position_botbar_y_start = position_botbar_y;
position_botbar_y_end = position_botbar_y - global.bar_size;

position_topbar_y = 0;
position_topbar_y_start = position_topbar_y;
position_topbar_y_end = position_topbar_y + global.bar_size;

dialogue_done = false;
dialogue_start = false;
