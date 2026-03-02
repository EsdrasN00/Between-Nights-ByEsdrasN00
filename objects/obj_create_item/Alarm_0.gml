switch image_index{
	// BATOM – beleza básica, cobra no cansaço
	case 0:
		price = [4, 1, 0];
		buff  = [2, -1, -1];
	break;
	// POMADA – limpa cheiro, mas pesa
	case 1:
		price = [3, 0, 1];
		buff  = [1, 2, -2];
	break;
	// PERFUME – forte contra odor, artificial
	case 2:
		price = [3, 3, 0];
		buff  = [-2, 3, 1];
	break;
	// TONICO – controle de fatigue sem tentacle
	case 3:
		price = [2, 3, 0];
		buff  = [-1, -1, 3];
	break;
	// MASK – atalho perigoso
	case 4:
		price = [5, 2, 0];
		buff  = [3, 1, -2];
	break;
	// CREME – item raro, resolve tudo um pouco
	case 5:
		price = [6, 3, 2];
		buff  = [2, 2, 2];
	break;
}


if buff[0] > 0{ buff_txt[0] = "+" + string(buff[0]);}else{ buff_txt[0] = string(buff[0]); }
if buff[1] > 0{ buff_txt[1] = "+" + string(buff[1]);}else{ buff_txt[1] = string(buff[1]); }
if buff[2] > 0{ buff_txt[2] = "+" + string(buff[2]);}else{ buff_txt[2] = string(buff[2]); }
