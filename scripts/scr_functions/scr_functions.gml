function scr_screenshake(_force){
	var _shake = instance_create_layer(x, y, "Instances", obj_screenshake);
	_shake.shake = _force;
}

function scr_fade(_force, _goto){
	var _fade = instance_create_layer(x, y, "Instances", obj_fade_in);
	_fade.fade_force = _force;
	_fade.goto = _goto;
}

function scr_play_sound(_sound, _pitch){
	var _pitch2 = 1 + random_range(-_pitch, _pitch);
	audio_play_sound(_sound, 1, false, 1, 0, _pitch2);
}