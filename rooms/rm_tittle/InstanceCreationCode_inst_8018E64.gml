on_click = function(){
	if window_get_fullscreen() == 0{
		window_set_fullscreen(1);
		txt = "Sair da tela cheia";
	}else{
		window_set_fullscreen(-1);
		txt = "Tela cheia";
	}
}

txt = "Tela cheia";