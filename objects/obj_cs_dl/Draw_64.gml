draw_set(c_black, 0.4);

draw_rectangle(0, display_get_gui_height(), display_get_gui_width(), position_bar_y, 0);

draw_reset();

if can_display_text{
	draw_set_align(fa_center, fa_middle);
	
	var message = dialog_get_text();
	var text = string_copy(message, 0, character_index);
	
	draw_set_font(fnt_one);
	draw_text(display_get_gui_width() / 2, display_get_gui_height - 50, text);
	
	if is_waiting_for_keypress{
		draw_set_align(fa_left, fa_middle);
		text = "*Press X";
		var text_length = string_width(text);
		draw_text_transformed(display_get_gui_width() - 5 - text_length, display_get_gui_height() - 20, text, 0.75, 0.75, 0);
	}
}

