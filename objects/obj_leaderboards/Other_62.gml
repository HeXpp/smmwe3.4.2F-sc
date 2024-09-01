var resultado, map, i, leveldata, card, record, timer, seconds, minutes, milliseconds, user_data, etiq;
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
        if (!(ds_map_exists(map, "message")))
        {
            levels = ds_map_find_value(map, "result")
			/*var conto = ds_map_find_value(map, "user")
			var conto2 = ds_map_find_value(conto, "count")
			cantidad = ds_map_find_value(conto2, "cantidad")*/
            global.map_consult = resultado
            global.type_consult = type_consulta
            with (obj_lb_card)
                instance_destroy()
            for (var i = 0; i < ds_list_size(levels); i++)
            {
                leveldata = ds_list_find_value(levels, i)
                card = instance_create(192, (60 + (30 * i)), obj_lb_card)
				card.name = ds_map_find_value(leveldata, "alias")
                card.record = ds_map_find_value(leveldata, "cantidad")
			    // Add position to card
			    var position = i + 1;
			    card.position = string(position);
				if position > 3 
					card.image_index = 1
				else
					card.image_index = 0
            }
            loading = 0
            obj_leaderboards.active = 1
            with (obj_lb_button_retry)
                instance_destroy()
            mensaje = ""
            codigo = ""
            alarm[2] = -1
			if type_consulta = 1
				instance_create_depth(0, 93, 0, obj_lb_difficulty)
        }
        else if ds_map_exists(map, "message")
        {
            mensaje = ds_map_find_value(map, "message")
            codigo = ds_map_find_value(map, "error_type")
            loading = 0
            alarm[2] = -1
            with (obj_lb_button_retry)
                instance_destroy()
            instance_create_depth((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 126),-3, obj_lb_button_retry)
        }
        ds_map_destroy(map)
    }
    else if (rows_perpage == 0)
    {
        mensaje = scr_language(180)
        codigo = "002"
        loading = 0
        alarm[2] = -1
        with (obj_lb_button_retry)
            instance_destroy()
        instance_create_depth((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 126),-3, obj_lb_button_retry)
    }
}

