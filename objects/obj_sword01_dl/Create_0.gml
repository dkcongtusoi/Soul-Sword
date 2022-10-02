can_display_text = false;


character_index = 0;

is_waiting_for_keypress = false;


dialog_init();
dialog_add(spr_Sword_Icon, "Qiu Ye, you must stay on task. If you've finished meditating we must go.");
dialog_add(spr_Sword_Icon, "You must collect your memories of Ruo Lian to retrieve the Memory Soul if you want to carry on her legacy.");
dialog_add(spr_QY_Icon, "That's right... I came to the Kunlun Mountains to find my memories of the princess...");
dialog_add(spr_QY_Icon, "to fulfil the blade's destiny and resurrect her.");
dialog_add(spr_Sword_Icon, "Yes, Qiu Ye. You are a good companion,");
dialog_add(spr_Sword_Icon, "but not as good as Princess Ruo Lian.");
dialog_add(spr_QY_Icon, "Tch.");
dialog_add(spr_QY_Icon, "What must I do after collecting all the memories of her?");
dialog_add(spr_Sword_Icon, "You must offer them at the summit's shrine to resurrect your beloved.");
dialog_add(spr_Sword_Icon, "Now don't forget again, Qiu Ye,");
dialog_add(spr_Sword_Icon, "or you may have to look for memories of yourself instead.");

dialog_reset();

offset = 700;