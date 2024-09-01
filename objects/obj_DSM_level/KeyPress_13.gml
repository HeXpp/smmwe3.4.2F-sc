if (obj_DSM_mario.hspeed == 0) and x = obj_DSM_mario.x and press = 0{
	if has_internet(){
	if press = 0
		audio_play_sound(snd_letsgo, 0, false)
	press =	1
	alarm[0] = 1
	}
}
else if (obj_DSM_mario.hspeed == 0) and x = obj_DSM_mario.x and !has_internet(){
	audio_stop_sound(snd_wrong)
	audio_play_sound(snd_wrong,0,false)
}
/*
if obj_DSM_mario.hspeed == 0{
	global.dsm = 1
	global.completed_levels ++
	if global.level_group < 7 
	global.level_group ++
	else
	global.level_group = 0
	room_restart()
}
*/