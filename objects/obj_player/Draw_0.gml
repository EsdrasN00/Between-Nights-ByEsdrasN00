//DRAW PLAYER IF HES INVENCIBLE
if inv % 5 == 0 and inv > 0{//IF IT WAS HITTED ON THE LAST 10 FRAMES OR WILL DIE
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*side, image_yscale, image_angle, image_blend, 0.2);
}else{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*side, image_yscale, image_angle, image_blend, image_alpha);
}

//DRAW PLAYER HAND
draw_sprite_ext(spr_player_second_hand, 0, second_hand_pos, y - 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if sprite_index == spr_player_idle_back or sprite_index == spr_player_run_back{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*side, image_yscale, image_angle, image_blend, 1);
}

if inv >= 80{//IF IT WAS HITTED ON THE LAST 10 FRAMES OR WILL DIE
	gpu_set_fog(true, c_white, 0, 0);//THEN DRAW SELF IN WHITE
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*side, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_player_second_hand, 0, second_hand_pos, y - 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	gpu_set_fog(false, c_white, 0, 0);
}

//DRAW LIFE INDICATOR
draw_sprite(spr_life_indicator, life, x, y - 12);