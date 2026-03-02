draw_self();

draw_set_valign(fa_middle);
//draw_set_halign(fa_center);
draw_set_font(fnt_little);
draw_set_color(global.color_white);

draw_text_ext(x + 2, y + sprite_height/2, txt, 7, 12*8);

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);