#region MEDIA  AND CHANGE SPEED

var _stt = obj_persistent.status;
var _md = (_stt.beauty + _stt.odor + _stt.fatigue) / 3;

status_media = floor(_md / (20 / 3));
status_media = clamp(status_media, 0, 2);

var _mult = (status_media - 1)*0.1;

spd = 0.6 + _mult;//BASE SPEED
spd_base = spd;//NORMAL SPEED
spd_bug = (0.6*0.707) + _mult;//SPEED WHEN IT BUGS (DIAGONAL)

#endregion
hspd = 0;
vspd = 0;
life = 3;
side = 1;//WHAT SIDE IS THE MOUSE
inv = 0;//INVINCIBLE TIME
enemy_hit = noone;//WHICH ENEMY HITED YOU

randomize();
second_hand_pos = x - side*4;