if already == false{
	switch image_index{
		case 6: with obj_persistent{ itens.slime ++; }		break;
		case 7: with obj_persistent{ itens.teeth ++; }		break;
		case 8: with obj_persistent{ itens.tentacle ++; }	break;
	}
	already = true;
	scr_play_sound(snd_drop, 0.2);
}

instance_destroy();