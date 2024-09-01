if !instance_exists(obj_edit_menu) and !instance_exists(obj_settings_panel) and room != rm_leaderboards{
if room != rm_DSM{
    audio_play_sound(snd_select_tile, 0, false)
    event_user(0)
    with (obj_nm_tabs)
    {
        if (value == 4)
        {
            image_index = 1
            c_color = 16777215
        }
        else
        {
            image_index = 0
            c_color = c_button
        }
    }
    global.map_consult = -4
    global.type_consult = -4
    global.pages_nm = 1
    global.tabvalue = value
    with (obj_nivelesmundiales)
    {
        page = 1
        active = 0
        mensaje = ""
        codigo = ""
        type_consulta = 5
        event_user(0)
        alarm[0] = 5

    }
}
else if !instance_exists(obj_DSM_alert_cloud) and has_internet()
	instance_create_depth((camera_get_view_x(view_get_camera(0)) + 40), (camera_get_view_y(view_get_camera(0)) + 32), -11, obj_DSM_alert_cloud)
else if !has_internet(){
	audio_stop_sound(snd_wrong)
	audio_play_sound(snd_wrong,0,false)
}
}