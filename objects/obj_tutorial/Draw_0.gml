draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_little);
draw_set_color(global.color_white);

draw_text_ext(room_width/2, 56, "Durante a madrugada elimine inimigos por 45 segundos (ou ate morrer). Durante a noite, crie itens e nao deixe que qualquer status chegue a zero. Sobreviva ate a noite 7!", 7, 120);

if alarm[0] <= 0{
	draw_set_color(global.color_gray);
	draw_text_ext(room_width/2, room_height - 48, "Aperte qualquer tecla para continuar", 7, 12*10);
}

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);