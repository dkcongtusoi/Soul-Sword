triggered = false;
showing = false;

view_midw = surface_get_width(application_surface)/2;
view_midh  = surface_get_height(application_surface)/2;

can_display_text = false;

character_index = 0;

is_waiting_for_keypress = false;

dialog_init();
dialog_add(spr_QY_box, "Something about the rooftop...");

dialog_reset();

global.popup = noone;