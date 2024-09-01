audio_stop_sound(snd_gameover)
audio_stop_all()
scr_init_globals()
if file_exists((working_directory + "save.dat"))
{
    file_delete(working_directory + "save.dat");
}
global.level_group = 0
global.completed_levels = 0
global.DSM_2 = 0
global.dsm = 0
http_get("http://hexpserver.ddns.net/index.php?edituser="+global.my1+"&column=progress&mode=record&quantity=0&mango=8871336752826128")
http_get("http://hexpserver.ddns.net/index.php?edituser="+global.my1+"&column=dsm_2&mode=record&quantity=0&mango=8871336752826128")
http_get("http://hexpserver.ddns.net/index.php?edituser="+global.my1+"&column=level_group&mode=record&quantity=0&mango=8871336752826128")
http_get("http://hexpserver.ddns.net/index.php?edituser="+global.my1+"&column=lives&mode=record&quantity=0&mango=8871336752826128")
room_goto(rm_DSM)