//CHOOSE RANDOMLY SOME ENEMY
var _rand = irandom(chances);
if slimes < 5{
	if _rand >= 6{
		to_create = obj_evil_eye;
	}else if _rand >= 4{
		to_create = obj_eater;
	}else{
		to_create = obj_slime;
	}
}else{
	to_create = obj_eater;
	slimes = 0;
}

if to_create == obj_slime{
	slimes ++;
}

//CHOOSE RANDOMLY WHERE TO CREATE THE ENEMYS
var _where = irandom(1);
if _where == 0{
	xx = irandom_range(-12, room_width + 10);
	yy = choose(-12, room_height + 12);
}else{
	xx = choose(-12, room_width + 12);
	yy = irandom_range(-12, room_height + 10);
}

instance_create_layer(xx, yy, "Instances", to_create);

alarm[0] = irandom_range(110, 180) - global.day*10;