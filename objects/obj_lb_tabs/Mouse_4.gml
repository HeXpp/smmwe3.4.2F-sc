if (has_internet() && image_index == 0 && obj_leaderboards.active == 1 && obj_leaderboards.loading == 0 and !instance_exists(obj_edit_menu) and !instance_exists(obj_settings_panel))
{
    with (obj_lb_button_retry)
        instance_destroy()
    with (obj_lb_tabs)
    {
        image_index = 0
        c_color = c_button
    }
    image_index = 1
    c_color = 16777215
    global.map_consult = -4
    global.type_consult = -4
    global.pages_nm = 1
    global.tabvalue = value
    with (obj_leaderboards)
    {
        page = 1
        if (other.value != 3)
            active = 0
        else
            pages = 1
        mensaje = ""
        codigo = ""
        type_consulta = other.value
        event_user(0)
        alarm[0] = 5
    }
}


