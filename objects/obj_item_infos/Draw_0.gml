var _item = instance_position(x, y, obj_create_item);


if _item != noone and place_meeting(x, y, obj_create_item){

	#region DRAW PRICES
	var _startX1 = room_width - 10;
	var _startY1 = 123;
	var _espacamento1 = 20;
	var _slot1 = 0;

	for (var i = 0; i < 3; i++) {
	    if (_item.price[i] > 0) {
        
	        var _posX1 = _startX1 - (_slot1 * _espacamento1);
        
	        draw_sprite(spr_drops, i + 3, _posX1, _startY1);
        
	        draw_set_halign(fa_right);
			draw_set_font(fnt_little);
			draw_text(_posX1 - 5, _startY1 - 3, "-" + string(_item.price[i]));
			draw_set_font(-1);
	        draw_set_halign(-1);

	        _slot1++;
	    }
	}
	#endregion
	
	#region DRAW STATUS
	var _startX2 = 11;
	var _startY2 = 123;
	var _espacamento2 = 22;
	var _slot2 = 0;

	for (var i = 0; i < 3; i++) {
	    if (_item.buff_txt[i] != 0) {
        
	        var _posX2 = _startX2 + (_slot2 * _espacamento2);
        
	        draw_sprite(spr_girl_indicators, i + 3, _posX2, _startY2);
        
			draw_set_font(fnt_little);
			draw_text(_posX2 + 6, _startY2 - 3, _item.buff_txt[i]);
			draw_set_font(-1);

	        _slot2++;
	    }
	}
	#endregion
	
	
	draw_sprite_ext(spr_night_buttons_selected, 0, _item.x, _item.y, 1, 1, 0, c_white, 1);
}