draw_sprite(spr_days_indicator, global.day - 1, 0, 0);

draw_set_font(fnt_little);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width/2, room_height/4, "Dia " + string(global.day));

draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);