//STOP
if instance_exists(obj_fade_in){
	image_speed = 0;
	speed = 0;
	exit;
}
//SET DEPTH
depth = -y;

//SET POSITION
x = obj_player.x;
y = obj_player.y - 3;

//SET ANGLE IF ISN'T ATTACKING
if sprite_index == spr_sword{
	//GET THE ANGLE FOR APOINT THE MOUSE
	var _ang = point_direction(obj_player.x, obj_player.y - 3, mouse_x, mouse_y);
	//GET THE DIFFERENCE BETWEEN THE ACTUAL ANGLE AND THE WANTED
	var _dif = angle_difference(_ang, image_angle);
    image_angle += _dif * 0.2;
	
	//CHANGE THE SIDE ONLY IF ISN'T ATTACKING
	//side = obj_player.side;
}

//IF THE PLAYER ATTACKS AND COOLDOWN IS ZERO
if mouse_check_button_pressed(mb_left) and alarm[0] <= 0{
	attacking = true;
	image_index = 0;
	sprite_index = spr_sword_atk;
	hitbox = false;
/*	if instance_exists(par_enemy) and distance_to_object(instance_nearest(x, y, par_enemy)) > 16{
		scr_play_sound(snd_sword, 0.3)
	}*/
	alarm[0] = cooldown;
}