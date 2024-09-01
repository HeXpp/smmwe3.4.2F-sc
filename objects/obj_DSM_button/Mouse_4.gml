if ((!instance_exists(obj_DSM_alert_message)) && (!instance_exists(obj_edit_menu)) and !instance_exists(obj_settings_panel) && !instance_exists(obj_DSM_alert_cloud))
{
    if file_exists((working_directory + "save.dat"))
    {
        audio_play_sound(snd_aceptar, 0, false)
        instance_create_depth((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 52), -11, obj_DSM_alert_message)
    }
    else
    {
        audio_play_sound(snd_aceptar, 0, false)
        if (global.difficultyd == 0)
            global.lives = 10
        else if (global.difficultyd == 1)
            global.lives = 15
        else if (global.difficultyd == 2)
            global.lives = 20
        else if (global.difficultyd == 3)
            global.lives = 30
scr_save(global.difficultyd)
room_goto(rm_DSM_game);	
	}
}
/*if !instance_exists(obj_DSM_alert_message) and !instance_exists(obj_edit_menu){
if file_exists(working_directory+"save.dat"){
audio_play_sound(snd_aceptar, 0, false);
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 52),-10,obj_DSM_alert_message)
}
else{
audio_play_sound(snd_aceptar, 0, false);
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

scr_save(global.difficultyd)
room_goto(rm_DSM_game);	
}
}
*/