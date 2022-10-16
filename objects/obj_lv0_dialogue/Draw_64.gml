//if can_display_text{
	draw_set_align(fa_center, fa_middle);
	
	//draw_sprite(dialog_get_picture(), 0, offset, display_get_gui_height() - 154);
	
	var message = dialog_get_text();
	
	//var text = string_copy(message, 0, character_index);
	draw_set_font(fnt_one);
	draw_text_scribble_ext(display_get_gui_width()/2, display_get_gui_height() - 100, message, 1500);
	
	//if is_waiting_for_keypress{
		draw_set_align(fa_left, fa_middle);
		text = "[scale, 0.5][pulse][c_white]F : NEXT[/colour][/pulse][/s]";
		draw_set_font(fnt_one);
		draw_text_scribble(display_get_gui_width() - 200,  display_get_gui_height() - 50, text);