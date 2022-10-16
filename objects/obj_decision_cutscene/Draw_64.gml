draw_set_align(fa_center, fa_middle);

draw_set_font(fnt_one);

if can_option{
	draw_text_transformed_color(display_get_gui_width()/2 - 500, display_get_gui_height() - 154, "[<] Refuse to kill her", scale1, scale1, 0, color1, color1, color1, color1, alpha1);

	draw_text_transformed_color(display_get_gui_width()/2 + 500, display_get_gui_height() - 154, "Accept her command [>]", scale2, scale2, 0, color2, color2, color2, color2, alpha2);
}

if can_confirm{
	text = "[scale, 0.5][pulse][c_white]F:CONFIRM[/colour][/pulse][/s]";
	draw_set_font(fnt_one);
	draw_text_scribble(display_get_gui_width()/2,  display_get_gui_height() - 50, text);
}

draw_set(c_white, 0.1);
if last_choice == 1{
	draw_rectangle(0, display_get_gui_height(), display_get_gui_width()/2, obj_blackbar.position_botbar_y, 0);
}

else if last_choice == 2{
	draw_rectangle(display_get_gui_width()/2, display_get_gui_height(), display_get_gui_width(), obj_blackbar.position_botbar_y, 0);
}
draw_reset();