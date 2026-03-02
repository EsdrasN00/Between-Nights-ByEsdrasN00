#region GET STATUS MEDIA
var _stt = obj_persistent.status;
var _md = (_stt.beauty + _stt.odor + _stt.fatigue) / 3;

status_media = floor(_md / (20 / 3));
status_media = clamp(status_media, 0, 2);

/*if keyboard_check_pressed(vk_left){ _stt.beauty --; _stt.odor --; _stt.fatigue --; }
if keyboard_check_pressed(vk_right){ _stt.beauty ++; _stt.odor ++; _stt.fatigue ++; }*/
#endregion

public_spd += 0.03;

if alarm[0] <= 80 and alarm[0] > 0 and down_already == false{
	scr_screenshake(20);
	
	with obj_persistent{
		status.beauty -= other.downgrade[0];
		status.odor -= other.downgrade[1];
		status.fatigue -= other.downgrade[2];
	}
	scr_play_sound(snd_hurt, 0.1);
	down_already = true;
}
/*
if keyboard_check_pressed(vk_space){
	news = choose(
	"PERFEITA",
	"BRILHOU",
	"LINDA",
	"OK",
	"NOSSA...",
	"FEIA"
	);
}