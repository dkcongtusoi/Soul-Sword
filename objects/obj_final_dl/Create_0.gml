display_set_gui_size(room_width/2, room_height/2);


position_bar_y = display_get_gui_height();
position_bar_y_end = position_bar_y - 150;

can_display_text = false;
is_waiting_for_keypress = false;

character_index = 0;

dialog_init();

dialog_add(noone, "\"My princess, I have come for you, now be reborn!\"");
dialog_add(noone, "A final trade of life and death. Qiu Ye stabs the sword of resurrection into the grave.");
dialog_add(noone, "The earth shatters with the sheer ferocity of the power collated within the sword.");
dialog_add(noone, "The earth trembles, the seal of the sword is broken. The trade of countless tortured souls for one has been complete.");

dialog_add(noone, "The princess is resurrected.");
dialog_add(noone, "She is ungodly and fearsome as the many souls Qiu Ye has collected. Angered and terrifying.");
dialog_add(noone, "Her dragon-like form towers above Qiu Ye, her presence overwhelming.");
dialog_add(noone, "Qiu Ye cannot fathom her tears, surely it is the greatest honour to be born again?     ");
dialog_add(noone, "RL: \"Qiu Ye, could you not have left the dead to rest?\nYou banished the innocent to the grave to resurrect the forsaken.");
dialog_add(noone, "You took my legacy and destroyed it.\nYou have truly forsaken me, blinded disciple. \nI trusted you with my blade.");
dialog_add(noone, "Why did you let your devotion blind you?\nYou killed those of the innocent, you have taken so many guiltless souls to trade for just one.\nOne who did not want to be reborn!\"");
dialog_add(noone, "QY: \"My Lord your worth is beyond the heavens reckoning. The people need you as much as I do.");
dialog_add(noone, "It is not by selfish intentions that I have drawn you back into the living, \nyou must understand. I did this for you.\"");
dialog_add(noone, "RL: \"For me? You must be bound in your own selfish lust Qiu Ye. \nYou have done this for no other than yourself.");
dialog_add(noone, "Those souls of the innocent, I harbour all their feelings and misery inside me now, \nI am the manifestation of all their hurt and pain.\"");
dialog_add(noone, "QY: \"But Ruo Lian... our hopes, our dreams...\"     ");

dialog_add(noone, "RL: \"You do not realise what you have done. \nI gave you freedom. I cut my own fate short so that you may have a chance at life.");
dialog_add(noone, "No longer tied to me with your unyielding red string. \nI knew that you would be happy with my marriage to another even if it would destroy you.");
dialog_add(noone, "You love me, you love me too much.\"");
dialog_add(noone, "QY: \"You cut your own fate short? For me?\"");
dialog_add(noone, "RL: \"Yes because that is the very depth of my love for you! \nBut you have testified, you have proven to me, you are not worthy of such mortal things.\"");
dialog_add(noone, "QY: \"My lord please, give me one last chance!\"");


dialog_reset();
