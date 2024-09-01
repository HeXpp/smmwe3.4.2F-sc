if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
            show_debug_message("Resultado invalido")
        if ds_map_exists(map, "id")
        {
            global.my1 = ds_map_find_value(map, "alias")
            global.my2 = ds_map_find_value(map, "id")
            global.my3 = ds_map_find_value(map, "admin")
            global.my4 = ds_map_find_value(map, "booster")
            global.my5 = ds_map_find_value(map, "auth_code")
            global.my6 = ds_map_find_value(map, "goomba")
            global.my7 = ds_map_find_value(map, "mod")
            with (obj_persistent)
                event_user(7)
			var _str =  ((("mango=" + global.token) + "&username=") + global.my1)
			url2 = http_post_string((global.api2_url + "createuser"), _str)
            if (room == rm_intro)
                room_goto(rm_title)
            else
            {
                scr_toast(0, scr_language(97))
                with (obj_iname_control2)
                    instance_destroy()
            }
        }
        else if ds_map_exists(map, "message")
        {
            mensaje = ds_map_find_value(map, "message")
            codigo = ds_map_find_value(map, "error_type")
            alarm[2] = -1
            time = 5
            alarm[3] = 60
            with (obj_lp)
                new_texto = ""
        }
        ds_map_destroy(map)
    }
    else
    {
        mensaje = scr_language(98)
        codigo = "002"
        alarm[2] = -1
        time = 5
        alarm[3] = 60
        with (obj_lp)
            new_texto = ""
    }
}