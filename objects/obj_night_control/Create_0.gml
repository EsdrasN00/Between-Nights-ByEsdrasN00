status_media = 0;
public_spd = 0;

selected_button = noone;

downgrade = [0, 0, 0];
down_already = false;

bar_bg1 = 0;
bar_bg2 = 0;
bar_bg3 = 0;

for (var i = 0; i <= 4 + round(global.day*1.5); i ++){
	var _rand = (irandom(2));
	downgrade[_rand] += 1;
}

#region CREATE BUTTONS
var _item_size = 24;
var _x_start = 3;
var _space = 2;
var _qntt = 6;

for (var i = 0; i < _qntt; i ++){
	var _xx = _x_start + (_item_size/2) + i*(_item_size + _space);
	var _obj = instance_create_layer(_xx, 103, "Instances", obj_create_item);
	_obj.image_index = i;
	_obj.depth = depth - 24;
}
#endregion

instance_create_depth(14, 103, depth - 25, obj_item_infos);

news0 = [//BAD
	"Ela parece mal",
	"Ja foi melhor",
	"Tadinha...",
	"Aconteceu algo",
	"Nojo...",
	"Bem estranha",
	"Decaiu",
	"Vergonhoso",
	"So ladeira abaixo"
];

news1 = [//MEDIUM
	"Ela e legal",
	"Ela e diva!",
	"Sensacional",
	"Ela arrasa",
	"Ela parece bem",
	"Curti",
	"Nada mal",
	"Mandou bem",
	"Tem futuro"
];

news2 = [//GREAT
	"Ela domina!",
	"Quero ser como ela!",
	"Apenas perfeita",
	"Controle total!",
	"5 estrelas!",
	"Pura classe!",
	"Rainha",
	"Brilha demais!",
	"Sem defeitos!"
];

news_catalogue = [news0, news1, news2];
show_news = 0;

global.mouse = 1;

alarm[0] = -1;
alarm[1] = 2;