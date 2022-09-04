display_set_gui_size(room_width/2, room_height/2);



position_bar_y = display_get_gui_height();
position_bar_y_end = position_bar_y - 150;

can_display_text = false;
is_waiting_for_keypress = false;

character_index = 0;

dialog_init();

dialog_add(noone, "In Ancient China, during the Ming Dynasty, the country was divided into various nations.");
dialog_add(noone, "The most influential of them all, the Ruo royal family.");
dialog_add(noone, "A heirloom, passed down upon eons of generations of Ruo descendants.");
dialog_add(noone, "A sword, carved out from the finest ore, believed to have been bestowed by the power of resurrection by the gods.");
dialog_add(noone, "The sword thrives on bloodshed and the collection of souls.");
dialog_add(noone, "It is said when enough souls are sealed in the sword, in a hellish trade, a solitary soul may rise again.");
dialog_add(noone, "The death toll bell signals the final act. Or, the opening of the play. \nThe sound shakes the halls of the palace.");
dialog_add(noone, "Two minutes remain, maybe one.");
dialog_add(noone, "Her skin is losing its warmth, her eyes closing, as she lays draped in her knight's arms.");
dialog_add(noone, "A crimson flower blooms over her heart, tainting her silken robes.");
dialog_add(noone, "She is beyond saving, they scream,\nthe wound in her heart is far too deep.");
dialog_add(noone, "It is a beautiful scene. Almost as if constructed by the hands of the gods.");
dialog_add(noone, "Princess Ruo Lian cradled in Qiu Ye's arms upon the center of the throne room.");
dialog_add(noone, "The air is warm, the ancient dragons on the walls watch the bloodline's last hope collapse.");
dialog_add(noone, "There is an uproar at the same time there is complete silence.");
dialog_add(noone, "Light shines upon them, casting an everlasting glow.");
dialog_add(noone, "\"Qiu Ye\"");
dialog_add(noone, "It is a faint but unmistakable sound.");
dialog_add(noone, "\"Dianxia.\"");
dialog_add(noone, "comes the instantaneous reply.\nAlways rigid in her duties until the very end.");
dialog_add(noone, "\"My soul\"");
dialog_add(noone, "she speaks softly, angelic.");
dialog_add(noone, "As if she were someone who passed before their physical body joined them in death.");
dialog_add(noone, "She lifts her soul upwards to her soulmate,");
dialog_add(noone, "\"My sword.\"");
dialog_add(noone, "Qiu Ye begins to protest,");
dialog_add(noone, "\"Dianxia, I could never.\"");
dialog_add(noone, "\"My dying wish is for your freedom, Qiu Ye.\"");
dialog_add(noone, "The princess' words do not falter.");
dialog_add(noone, "\"I will not let you die.\"");

dialog_reset();
