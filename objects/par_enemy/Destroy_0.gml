for (var i = 0; i < 10; i ++){
	var _part = instance_create_depth(x, y - 3, depth + 1, obj_simple_particle);
	_part.direction = 36*i;
}