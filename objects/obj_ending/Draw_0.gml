draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_little);
draw_set_color(global.color_white);

#region GAME OVER
if global.ending == 0{
	for (var i = 0; i < array_length(txt); i ++){
		draw_text(room_width/2, 40 + i*8, txt[i]);
	}
	if alarm[0] <= 0{
		draw_set_color(global.color_gray);
		draw_text_ext(room_width/2, room_height - 16, "Aperte qualquer tecla para tentar novamente", 7, 12*10);
	}
}
#endregion
#region WIN
else{
	
	draw_text(room_width/2, 40, "Dia 7 completo!");

	if alarm[0] <= 0{
		draw_set_color(global.color_gray);
		draw_text_ext(room_width/2, room_height - 16, "Aperte qualquer tecla para continuar", 7, 12*10);
	}
}
#endregion


draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);