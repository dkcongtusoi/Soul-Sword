can_display_text = false;

//if global.currentDialogue != noone{
//	global.currentDialogue = id;
//}

character_index = 0;

is_waiting_for_keypress = false;


dialog_init();
dialog_add(spr_Honger_Icon, "[rainbow]Jiejie, Jiejie[/rainbow] can you help me?");
dialog_add(spr_QY_Icon, "I suppose. What's your name?");
dialog_add(spr_Honger_Icon, "[#EE964B]Hong'er![/c]");
dialog_add(spr_Honger_Icon, "Would you help me find my [slant][#FAF0CA]kite?[/c][/slant] \nIt blew far towards the east");
dialog_add(spr_Honger_Icon, "I chased it all the way from my village far back that way.");
dialog_add(spr_QY_Icon, "The [#b6d055]Bamboo Village?[/c]");
dialog_add(spr_Honger_Icon, "Yes! I need to hurry home soon before my mama beats me with the broom, \nso please help me find my kite!");


dialog_reset();

offset = 700;