	draw_set_align(fa_center, fa_middle);
	
	var message = dialog_get_text();

	draw_set_font(fnt_one);
	draw_text_scribble_ext(display_get_gui_width()/2, display_get_gui_height() - 154, message, 1200);
	
	draw_set_align(fa_left, fa_middle);
	var text = "[scale, 0.5][pulse][c_white]F:NEXT[/colour][/pulse][/s]";
	draw_set_font(fnt_one);
	draw_text_scribble(display_get_gui_width() - 200,  display_get_gui_height() - 50, text);