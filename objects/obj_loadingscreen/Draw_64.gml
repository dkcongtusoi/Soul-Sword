draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0);
draw_set_alpha(1);
draw_set_align(fa_center, fa_middle);
draw_set_color(c_white);
if can_display{
	draw_text_scribble(display_get_gui_width()/2, display_get_gui_height()/2, "[scale, 0.7]HEADPHONES ARE RECOMMENDED FOR THE BEST EXPERIENCE[/s]");
}
if loading{
	draw_text_scribble(display_get_gui_width()/2, display_get_gui_width()/2, "[pulse][scale, 0.2]LOADING...[/pulse][/s]");
}