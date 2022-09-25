s_emit = audio_emitter_create();
audio_max_distance_to_be_heard = 2000;
audio_starts_to_drop_at = 1000;

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit, x, y, 0);
audio_emitter_falloff(s_emit, audio_starts_to_drop_at, audio_max_distance_to_be_heard, 1);

state = 0;


