if alarm[0] <= 0{
	if keyboard_check_pressed(vk_anykey){
		scr_fade(0.01, rm_tittle);
	}
}

time --;
if global.ending == 0 and time <= 0{
	instance_create_layer(irandom_range(16, room_width - 16), room_height + 16, "Instances", obj_tomatoe);
	time = irandom_range(20, 50);
}

if global.ending == 1 and time <= 0{
	var _posx = irandom_range(16, room_width - 16);
	var _posy = irandom_range(16, room_height - 16);
	var _color = choose(global.color_blue,global.color_green,global.color_pink,global.color_red);
	
	audio_play_sound(snd_drop, 1, false, 1, 0, 0.5 + win_pitch);
	if win_pitch >= 1{
		win_pitch = 0;
	}else{
		win_pitch += 0.1;
	}

	for (var i = 0; i < 24; i ++){
		var _ang = (360/24)*i;
		var _part = instance_create_depth(_posx, _posy, -9999, obj_grav_part);
		_part.hspd = lengthdir_x(3, _ang);
		_part.vspd = lengthdir_y(3, _ang);
		_part.image_blend = _color;
	}
	
	time = 30;
}