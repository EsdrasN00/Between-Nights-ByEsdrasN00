status.beauty = clamp(status.beauty, 0, 20);
status.odor = clamp(status.odor, 0, 20);
status.fatigue = clamp(status.fatigue, 0, 20);

fade_out = lerp(fade_out, -0.2, 0.08);

if !audio_is_playing(snd_ost1){
	scr_play_sound(snd_ost1, 0);
}