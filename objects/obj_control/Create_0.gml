xx = 0;//WHERE TO CREATE
yy = 0;//WHERE TO CREATE

chances = 3 + global.day;//THE CHANCE MAX. IF 1 ONLY CREATE SLIMES. IF 3 CREATE SLIME AND EATER. IF 5 CREATE ALL
to_create = noone;//WHO WILL THE SPAWNER CREATE
slimes = 0;

alarm[0] = 60;
alarm[1] = 60*45;

global.mouse = 0;

repeat(2){
	var _pos = choose(
	[36, 36],
	[124, 36],
	[36, 108],
	[124, 108]
	);
	instance_create_layer(_pos[0], _pos[1], "Instances", obj_slime);
}