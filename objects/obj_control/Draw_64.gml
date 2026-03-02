draw_sprite_ext(spr_vignette, 0, -9, -4, 0.55, 0.9, 0, c_white, 0.6);

draw_sprite_ext(spr_drops, 0, 4, room_height - 38, 1, 1, 0, c_white, sign(obj_persistent.itens.slime) + 0.3);
draw_sprite_ext(spr_drops, 1, 4, room_height - 28, 1, 1, 0, c_white, sign(obj_persistent.itens.teeth) + 0.3);
draw_sprite_ext(spr_drops, 2, 4, room_height - 18, 1, 1, 0, c_white, sign(obj_persistent.itens.tentacle) + 0.3);

draw_set_font(fnt_little);
draw_sprite_ext(spr_night_bar, 1, 0, 0, 134, 1, 0, global.color_black, 1);
draw_sprite_ext(spr_night_bar, 1, 0, 0, (alarm[1]/(60*45))*134, 1, 0, global.color_pink, 1);
draw_set_color(global.color_white);
draw_text(1, 0, "Dia " + string(global.day));

draw_text(6, room_height - 40, obj_persistent.itens.slime);
draw_text(6, room_height - 30, obj_persistent.itens.teeth);
draw_text(6, room_height - 20, obj_persistent.itens.tentacle);

draw_set_color(c_white);
draw_set_font(-1);