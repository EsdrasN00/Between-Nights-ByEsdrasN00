image_xscale = lerp(image_xscale, 1, 0.08);
image_yscale = image_xscale;

hspd = lerp(hspd, 0, 0.1);
x += hspd;
vspd += grav;
y += vspd;
image_angle += ang;

if image_xscale <= 1.2{
	image_index = 1;
	image_angle = 0;
	
		instance_create_depth(x, y, depth + 1, obj_tomatoe_trail);
	
	if image_xscale >= 1.13{
		vspd = 0;
		grav = 0.1;
		image_angle = 0;
		if !audio_is_playing(snd_damage){
			scr_play_sound(snd_damage, 0.5);
		}
	}
}

if image_xscale <= 1.1 and y > room_height{
	instance_destroy();
}