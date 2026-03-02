var _stt = obj_persistent.status;
if !instance_exists(obj_fade_in){
	if _stt.beauty <= 0 or _stt.odor <= 0 or _stt.fatigue <= 0{
		scr_fade(0.02, rm_ending);
		scr_screenshake(40);
		global.ending = 0;
	}else{
		if global.day <= 6{
			scr_fade(0.02, rm_transition);
			global.day ++;
		}else{
			scr_fade(0.02, rm_ending);
			global.ending = 1;
		}
	}
}