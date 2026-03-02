//STATUS BARS
var _beauty = (obj_persistent.status.beauty/20)*142;
var _odor = (obj_persistent.status.odor/20)*142;
var _fatig = (obj_persistent.status.fatigue/20)*142;
//WHITE AND LERP BAR
gpu_set_fog(true, global.color_white, 0, 0);
bar_bg1 = lerp(bar_bg1, _beauty, 0.05)
bar_bg2 = lerp(bar_bg2, _odor, 0.05);
bar_bg3 = lerp(bar_bg3, _fatig, 0.05);
draw_sprite_ext(spr_night_bar, 0, 14, 64, bar_bg1, 1, 0, c_white, 1);
draw_sprite_ext(spr_night_bar, 0, 14, 72, bar_bg2, 1, 0, c_white, 1);
draw_sprite_ext(spr_night_bar, 0, 14, 80, bar_bg3, 1, 0, c_white, 1);
gpu_set_fog(false, c_white, 0, 0);
//BASE BAR
draw_sprite_ext(spr_night_bar, 0, 14, 64, _beauty, 1, 0, c_white, 1);
draw_sprite_ext(spr_night_bar, 0, 14, 72, _odor, 1, 0, c_white, 1);
draw_sprite_ext(spr_night_bar, 0, 14, 80, _fatig, 1, 0, c_white, 1);
//REDUCE INDICATOR BAR
if down_already == false{
	draw_sprite_ext(spr_night_bar_ind, 0, 14, 64, ((obj_persistent.status.beauty - downgrade[0])/20)*142, 1, 0, c_white, 1);
	draw_sprite_ext(spr_night_bar_ind, 0, 14, 72, ((obj_persistent.status.odor - downgrade[1])/20)*142, 1, 0, c_white, 1);
	draw_sprite_ext(spr_night_bar_ind, 0, 14, 80, ((obj_persistent.status.fatigue - downgrade[2])/20)*142, 1, 0, c_white, 1);
}
//BACKGROUND
draw_sprite(spr_night_scene, 0, 0, 0);
//DRAW PORTRAIT
draw_sprite_ext(spr_night_portraits, status_media, 2, 2, 1, 1, 0, c_white, 1);
//DRAW PUBLIC
draw_sprite_ext(spr_night_public, public_spd * status_media, 45, 2, 1, 1, 0, c_white, 1);
//DRAW ITENS INDICATORS
draw_set_font(fnt_little);
draw_set_color(global.color_black);

//DRAW ITENS QUANTITY INDICATOR
draw_text(19, 136, obj_persistent.itens.slime);
draw_text(42, 136, obj_persistent.itens.teeth);
draw_text(65, 136, obj_persistent.itens.tentacle);
//DRAW BAR INDICATORS
draw_set_color(global.color_white);
draw_text(16, 64, "Beleza");
draw_text(16, 72, "Aroma");
draw_text(16, 80, "Energia");

draw_set_halign(fa_right);
draw_text(155, 64, string_replace_all(string_format(obj_persistent.status.beauty, 2, 0), " ", "0"));
draw_text(155, 72, string_replace_all(string_format(obj_persistent.status.odor, 2, 0), " ", "0"));
draw_text(155, 80, string_replace_all(string_format(obj_persistent.status.fatigue, 2, 0), " ", "0"));
//DRAW NEWS TEXT
draw_set_halign(-1);

draw_text(52, 49, show_news);

draw_set_color(c_white);
draw_set_font(-1);


draw_sprite_ext(spr_vignette, 0, -9, -4, 0.55, 0.9, 0, c_white, 0.6);