#region GAME OVER
txt = [];

if obj_persistent.status.beauty <= 0{
	array_push(txt, "Sua beleza chegou a zero... Ugh");
}
if obj_persistent.status.odor <= 0{
	array_push(txt, "Seu aroma chegou a zero... Credo");
}
if obj_persistent.status.fatigue <= 0{
	array_push(txt, "Sua enegia chegou a zero... Melhoras");
}
#endregion

if global.ending = 0{
	time = 20;
}else{
	time = 60;
}

win_pitch = 0;

alarm[0] = 240;

global.day = 1;
obj_persistent.status.beauty = 10;obj_persistent.status.odor = 10;obj_persistent.status.fatigue = 10;
obj_persistent.itens.slime = 0;obj_persistent.itens.teeth = 0;obj_persistent.itens.tentacle = 0;