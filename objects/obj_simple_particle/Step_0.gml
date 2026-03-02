speed = lerp(speed, 0, desaceleration);

if speed <= 0.1 and image_xscale >= 0.05{
	image_xscale -= 0.05;
	image_yscale = image_xscale;
	image_alpha -= 0.02;
}

if image_xscale <= 0.05{
	instance_destroy();
}