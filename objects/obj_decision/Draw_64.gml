draw_set_align(fa_center, fa_middle);

draw_set_font(fnt_one);

if can_option{
	draw_text_transformed_color(display_get_gui_width()/2 - 500, display_get_gui_height() - 154, "[<] Kill Hong'er", scale1, scale1, 0, color1, color1, color1, color1, alpha1);

	draw_text_transformed_color(display_get_gui_width()/2 + 500, display_get_gui_height() - 154, "Spare Hong'er [>]", scale2, scale2, 0, color2, color2, color2, color2, alpha2);
}

if can_confirm{
	text = "[scale, 0.5][pulse][c_white]F:CONFIRM[/colour][/pulse][/s]";
	draw_set_font(fnt_one);
	draw_text_scribble(display_get_gui_width()/2,  display_get_gui_height() - 50, text);
}