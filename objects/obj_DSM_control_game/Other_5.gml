audio_stop_sound(dsm_music)
if global.level_group >= 6{
	global.level_group = 0
	global.DSM_2 = 1
	/*
	http_get("http://hexpserver.ddns.net/?edituser="+global.my1+"&column=level_group&mode=record&quantity=0&mango=8871336752826128")
	http_get("http://hexpserver.ddns.net/?edituser="+global.my1+"&column=dsm_2&mode=record&quantity=1&mango=8871336752826128")*/
}
scr_save(global.difficulty)