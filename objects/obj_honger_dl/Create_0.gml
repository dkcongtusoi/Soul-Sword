can_display_text = false;

character_index = 0;

is_waiting_for_keypress = false;


dialog_init();
dialog_add(spr_HongerPlaceholder, "Jiejie, Jiejie can you help me?");
dialog_add(spr_QY_DL, "I suppose. What's your name?");

dialog_reset();