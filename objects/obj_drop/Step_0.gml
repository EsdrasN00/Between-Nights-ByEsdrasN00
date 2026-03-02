if going == true{
	direction = point_direction(x, y, obj_player.x, obj_player.y) + 180;
	speed = lerp(speed, 0, 0.15);
	
	if speed <= 0.2{
		going = false;
	}
}else{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = lerp(speed, 6, 0.1);
}

image_angle = direction;