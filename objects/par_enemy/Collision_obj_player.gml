if other.inv <= 0 and life > 0{
	other.life --;

	var _ang = point_direction(x, y, other.x, other.y);
	other.hspd = lengthdir_x(1.2, _ang);
	other.vspd = lengthdir_y(1.2, _ang);
	
	scr_screenshake(30);
	
	scr_play_sound(snd_hurt, 0);
	
	other.inv = 90;
}