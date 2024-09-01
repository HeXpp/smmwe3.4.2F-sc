if file_exists((working_directory + "save.dat")){
var vidas = "http://hexpserver.ddns.net/?edituser="+string(global.my1)+"&column=lives&mode=record&quantity="+string(global.lives)+"&mango=8871336752826128"
var progreso = "http://hexpserver.ddns.net/?edituser="+string(global.my1)+"&column=progress&mode=record&quantity="+string(global.completed_levels)+"&mango=8871336752826128"
var level_group = "http://hexpserver.ddns.net/?edituser="+string(global.my1)+"&column=level_group&mode=record&quantity="+string(global.level_group)+"&mango=8871336752826128" 
var dsm_2 =	"http://hexpserver.ddns.net/?edituser="+string(global.my1)+"&column=dsm_2&mode=record&quantity="+string(global.DSM_2)+"&mango=8871336752826128"
var difficulty = "http://hexpserver.ddns.net/index.php?difficulty="+string(global.my1)+"&mode="+scr_diff()+"&mango=8871336752826128"
http_get(vidas)
http_get(progreso)
http_get(level_group)
http_get(dsm_2)
http_get(difficulty)
instance_destroy(obj_DSM_alert_cloud)
}