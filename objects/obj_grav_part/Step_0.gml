image_alpha -= al;
x += hspd;
y += vspd;
vspd += grav;

hspd = lerp(hspd, 0, 0.08);
vspd = lerp(vspd, 1, 0.08);

if image_alpha <= 0{
	instance_destroy()
}