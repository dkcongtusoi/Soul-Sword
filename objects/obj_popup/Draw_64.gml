if triggered and global.popup != noone{
	draw_sprite(global.popup, 0, view_midw, view_midh);
	showing = true;
	//can_display_text = true;
}else{
	
}

if can_display_text{
	draw_set_align(fa_center, fa_middle);
	
	draw_sprite(dialog_get_picture(), 0, display_get_gui_width()/2, display_get_gui_height()/2);
	
	var message = dialog_get_text();
	
	var text = string_copy(message, 0, character_index);
	
	draw_text_color(display_get_gui_width()/2, display_get_gui_height() - 145, text, c_black, c_black, c_black, c_black, 1);
	
	if is_waiting_for_keypress{
		draw_set_align(fa_left, fa_middle);
		text = "*Press X";
		var text_length = string_width(text);
		draw_text_transformed(display_get_gui_width() - 200 - text_length, display_get_gui_height() - 100, text, 1.2, 1.2, 0);
	}
}
