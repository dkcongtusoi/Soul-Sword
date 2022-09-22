//if can_display_text{
	draw_set_align(fa_center, fa_middle);
	
	//draw_sprite(dialog_get_picture(), 0, 300, display_get_gui_height() + 200);
	
	var message = dialog_get_text();
	
	//var text = string_copy(message, 0, character_index);
	draw_set_font(fnt_one);
	draw_text_color(display_get_gui_width()/2, display_get_gui_height() - 128, message, c_white, c_white, c_white, c_white, 1);
	
	//if is_waiting_for_keypress{
		draw_set_align(fa_left, fa_middle);
		text = "X : Next";
		var text_length = string_width(text);
		draw_set_font(fnt_one);
		draw_text_transformed_color(display_get_gui_width() - 200 - text_length, display_get_gui_height() - 50, text, 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1);
	//}
//}