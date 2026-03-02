//STOP
if instance_exists(obj_fade_in){
	image_speed = 0;
	speed = 0;
	exit;
}
//SET DEPTH, DIRECTION AND SPEED
depth = -y;
//LIMIT THE POSITION
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

if hit > 0{//IF IT WAS ATTACKED THEN IT RECEIVES A KNOCKBACK TURNING THE SPEED TO ZERO
	speed = lerp(speed, 0, 0.1);
	image_speed = 0;//PAUSE THE ANIMATION
}else{//BASE STATE
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = lerp(speed, spd, 0.1);
	image_speed = 1;
}

//IF LIFE <0 AND HAVE BEEN KNOCKBACKED THEM DIE
if life <= 0 and speed <= 0.5{
	
	var _drop = noone;
	switch sprite_index{
		case spr_slime:			_drop = 6;	break;
		case spr_eater:			_drop = 7;	break;
		case spr_evil_eye_down:	_drop = 8;	break;
		case spr_evil_eye_up:	_drop = 8;	break;
	}
	var _spr = instance_create_depth(x, y - 3, depth - 1, obj_drop);
	_spr.image_index = _drop; _spr.xx = x; _spr.yy = y;
	
	scr_play_sound(snd_explosion, 0.1);
	
	instance_destroy();
}

//IF THE MOUSE X ISN'T THE SAME AS THE PLAYER AND SIDE == 0
if obj_player.x - x != 0{
	image_xscale = sign(obj_player.x - x);
}

//DOWN THE VARIABLE
hit --;

//EVIL EYE WATCH THE PLAYER
if sprite_index == spr_evil_eye_down or sprite_index == spr_evil_eye_up{
	if obj_player.y < y{
		sprite_index = spr_evil_eye_up;//IF THE PLAYER IS ABOVE
	}else{
		sprite_index = spr_evil_eye_down;//IF THE BLAYER IS BELLOW
	}
}