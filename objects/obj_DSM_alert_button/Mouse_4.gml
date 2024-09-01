if (canpress == 1)
{
    audio_stop_sound(snd_guardabot)
    audio_play_sound(snd_aceptar, 0, false)
    image_index = 1
    if file_exists((working_directory + "save.dat"))
        file_delete((working_directory + "save.dat"))
    global.level_group = 0
    global.completed_levels = 0
    global.DSM_2 = 0
    if (global.difficultyd == 0)
        global.lives = 10
    else if (global.difficultyd == 1)
        global.lives = 15
    else if (global.difficultyd == 2)
        global.lives = 20
    else if (global.difficultyd == 3)
        global.lives = 30
    room_goto(rm_DSM_game)
}
/*
if (canpress == 1)
{
    audio_stop_sound(snd_guardabot)
    audio_play_sound(snd_aceptar, 0, false)
    image_index = 1
if file_exists((working_directory + "save.dat"))
{
    file_delete(working_directory + "save.dat");
}
/*
if global.difficultyd = 0{
var url = "http://hexpserver.ddns.net/?edituser="+global.my1+"&column=lives&mode=record&quantity=5&mango=8871336752826128"
}
else if global.difficultyd = 1{
var url = "http://hexpserver.ddns.net/?edituser="+global.my1+"&column=lives&mode=record&quantity=10&mango=8871336752826128"
}
else if global.difficultyd = 2{
var url = "http://hexpserver.ddns.net/?edituser="+global.my1+"&column=lives&mode=record&quantity=20&mango=8871336752826128"
}
else if global.difficultyd = 3{
var url = "http://hexpserver.ddns.net/?edituser="+global.my1+"&column=lives&mode=record&quantity=30&mango=8871336752826128"
}
http_get("http://hexpserver.ddns.net/?edituser="+global.my1+"&column=level_group&mode=record&quantity=0&mango=8871336752826128")
http_get("http://hexpserver.ddns.net/?edituser="+global.my1+"&column=dsm_2&mode=record&quantity=0&mango=8871336752826128")
http_get("http://hexpserver.ddns.net/index.php?resetprogress="+global.my1+"&mango=8871336752826128")
http_get(url)
    global.level_group = 0
    global.completed_levels = 0
    global.DSM_2 = 0
    if (global.difficultyd == 0)
        global.lives = 10
    else if (global.difficultyd == 1)
        global.lives = 15
    else if (global.difficultyd == 2)
        global.lives = 20
    else if (global.difficultyd == 3)
        global.lives = 30
room_goto(rm_DSM_game);	
}
*/