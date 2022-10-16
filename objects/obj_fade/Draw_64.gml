draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_width(), 0);
draw_reset();

if !started{
	draw_set_align(fa_center, fa_middle)
	draw_set_color(c_white);
	draw_set_font(fnt_one);
	draw_text_scribble(display_get_gui_width()/2, display_get_gui_height()/2, "[pulse]Loading...[/pulse]")
	draw_reset();
}