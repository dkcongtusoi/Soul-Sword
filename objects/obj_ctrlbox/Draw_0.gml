draw_self();
draw_set_alpha(1);
draw_set_font(fnt_two);
draw_set_color(c_black);
draw_set_align(fa_left, fa_middle);
draw_text_scribble(x - 400, y - 500, "[scale, 0.7]MOVEMENT: LEFT + RIGHT[/s]");
draw_text_scribble(x - 400, y - 300, "[scale, 0.7]JUMP: UP / SPACEBAR[/s]");
draw_text_scribble(x - 400, y - 100, "[scale, 0.7]KNEEL: DOWN[/s]");
draw_text_scribble(x - 400, y + 100, "[scale, 0.7]INTERACT: F[/s]");
draw_text_scribble(x - 400, y + 300, "[scale, 0.7]MUTE SOUNDS: M[/s]");
draw_text_scribble(x - 400, y + 500, "[scale, 0.7]FULLSCREEN: F11[/s]");

draw_set_align(fa_center, fa_middle);
draw_text_scribble(x + 600, y + 600, "[scale, 0.3]F: CLOSE[/s]");

draw_reset();