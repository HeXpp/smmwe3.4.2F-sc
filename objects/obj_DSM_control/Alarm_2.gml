if file_exists((working_directory + "save.dat")){
if global.difficulty = 0
	var difficultyd = "easy"
else if global.difficulty = 1
	var difficultyd = "normal" 
else if global.difficulty = 2
	var difficultyd = "hard" 
else if global.difficulty = 3
	var difficultyd = "extreme" 
var vidas = "http://hexpserver.ddns.net/?edituser="+global.my1+"&column=lives&mode=record&quantity="+global.lives+"&mango=8871336752826128"
var progreso = "http://hexpserver.ddns.net/?edituser="+global.my1+"&column=progress&mode=record&quantity="+global.completed_levels+"&mango=8871336752826128"
var level_group = "http://hexpserver.ddns.net/?edituser="+global.my1+"&column=level_group&mode=record&quantity="+global.level_group+"&mango=8871336752826128" 
var dsm_2 =	"http://hexpserver.ddns.net/?edituser="+global.dsm_2+"&column=dsm_2&mode=record&quantity="+global.dsm_2+"&mango=8871336752826128"
var difficulty = "http://hexpserver.ddns.net/index.php?difficulty="+global.my1+"&mode="+difficultyd+"&mango=8871336752826128"
}