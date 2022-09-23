can_display_text = false;

//if global.currentDialogue != noone{
//	global.currentDialogue = id;
//}

character_index = 0;

is_waiting_for_keypress = false;


dialog_init();
dialog_add(spr_Honger_Idle, "[rainbow]Jiejie, Jiejie[/rainbow] can you help me?");
dialog_add(spr_QY_DL, "I suppose. What's your name?");
dialog_add(noone, "[#EE964B]Hong'er![/c]");
dialog_add(noone, "Would you help me find my [slant][#FAF0CA]kite?[/c][/slant] \nIt blew far towards the east");
dialog_add(noone, "I chased it all the way from my village far back that way.");
dialog_add(noone, "The [#b6d055]Bamboo Village?[/c]");
dialog_add(noone, "Yes! I need to hurry home soon before my mama beats me with the broom, \nso please help me find my kite!");


dialog_reset();