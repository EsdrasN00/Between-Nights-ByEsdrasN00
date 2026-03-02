var _mouse = instance_position(mouse_x, mouse_y, id);
draw_sprite_ext(sprite_index, _mouse, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_set_font(fnt_little);
if _mouse{ draw_set_color(global.color_white); }else{ draw_set_color(global.color_black); }
draw_set_halign(fa_center);

if global.day <= 6{
	draw_text(x, y - 3, "Ir para o dia " + string(global.day + 1));
}else{
	draw_text(x, y - 3, "Finalizar");
}

draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(c_white);