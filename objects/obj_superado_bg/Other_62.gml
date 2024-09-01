var resultado, map;
if (verify == 1)
{
    if (ds_map_find_value(async_load, "id") == url)
    {
        if (ds_map_find_value(async_load, "status") == 0)
        {
            var resultado = ds_map_find_value(async_load, "result")
            var map = json_decode(resultado)
            if (map == -1)
            {
                show_debug_message("Resultado invalido")
                exit
            }
            if ds_map_exists(map, "success")
            {
                text1 = ds_map_find_value(map, "success")
                text2 = ds_map_find_value(map, "id")
                loading = 0
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn))
					text = scr_language(176)
                instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)
            }
            else if ds_map_exists(map, "message")
            {
                mensaje = ds_map_find_value(map, "message")
                codigo = ds_map_find_value(map, "error_type")
                loading = 0
                with (obj_continue_btn)
                    instance_destroy()
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn)){
					if global.dsm = 0
						text = scr_language(161)
					else
						text = scr_language(160)
				}
                instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)
            }
            alarm[2] = -1
            ds_map_destroy(map)
        }
        else if (!instance_exists(obj_continue_btn))
        {
			mensaje = scr_language(175)
            codigo = "002"
            loading = 0
            with (obj_continue_btn)
                instance_destroy()
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn)){
				if global.dsm = 0
					text = scr_language(161)
				else
					text = scr_language(160)
			}
            instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)
            alarm[2] = -1
        }
    }
}
