can_display_text = false;

//if global.currentDialogue != noone{
//	global.currentDialogue = id;
//}

character_index = 0;

is_waiting_for_keypress = false;


dialog_init();
dialog_add(spr_Honger_Idle, "Jiejie, Jiejie can you help me?");
dialog_add(spr_QY_DL, "I suppose. What's your name?");
dialog_add(noone, "Hong'er!");
dialog_add(noone, "Would you help me find my kite?");
dialog_add(noone, "It blew far towards the east");
dialog_add(noone, "I chased it all the way from my village far back that way.");

dialog_reset();