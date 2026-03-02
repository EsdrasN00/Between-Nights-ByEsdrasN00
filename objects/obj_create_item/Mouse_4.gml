with(obj_persistent) {
    if itens.slime >= other.price[0] and itens.teeth >= other.price[1] and itens.tentacle >= other.price[2]{
		itens.slime -= other.price[0];
		itens.teeth -= other.price[1]
		itens.tentacle -= other.price[2];
		
		status.beauty += other.buff[0];
		status.odor += other.buff[1];
		status.fatigue += other.buff[2];
		
		scr_play_sound(snd_click, 0.1);
    }
}