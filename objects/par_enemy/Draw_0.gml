if hit >= 20 or life <= 0{//IF IT WAS HITTED ON THE LAST 10 FRAMES OR WILL DIE
	gpu_set_fog(true, c_white, 0, 0);//THEN DRAW SELF IN WHITE
	draw_self();
	gpu_set_fog(false, c_white, 0, 0);
}else{
	draw_self();
}