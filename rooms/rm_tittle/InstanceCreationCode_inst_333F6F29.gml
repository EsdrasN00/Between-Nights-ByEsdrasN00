on_click = function(){
	scr_play_sound(snd_click, 0.1);
    if global.tutorial == false{
		scr_fade(0.2, rm_tutorial);
		global.tutorial = true;
	}else{
		scr_fade(0.2, rm_midnight);
	}
}

txt = "Jogar";