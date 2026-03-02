if other.sprite_index == spr_sword_atk and hit <= 15 and other.image_index >= 2 and other.image_index <= 4{
	//GO BACK
	direction = point_direction(x, y, obj_player.x, obj_player.y) + 180;
	if life > 1{
		speed = 1.6 - spd//1.2 + spd;
	}else{//IF IT WILL DIE THEN GO FURTER AWAY
		speed = 2.5;
	}
	//SET SCREENSHAKE
	scr_screenshake(5);
	//PLAY SFX
	scr_play_sound(snd_damage, 0.3);
	//TAKE DAMAGE
	life --;	
	//SET THE HIT VARIABLE FOR CONTROL
	hit = 30;
}