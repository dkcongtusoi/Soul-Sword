if index <= image_number - 1{
	index += 0.2;
}else{
	instance_destroy();
}

if image_index == 13{
	if !audio_is_playing(snd_swordslash) and !has_played{
		has_played = true;
		audio_play_sound(snd_swordslash, 1, 0);
	}
}