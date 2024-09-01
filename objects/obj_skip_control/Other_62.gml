var resultado, map, i, leveldata, card, record, timer, seconds, minutes, milliseconds, user_data, etiq;
if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        resultado = ds_map_find_value(async_load, "result");
        map = json_decode(resultado);

        if (map == -1)
        {
            show_debug_message("Resultado invalido");
            exit;
        }

        if (!ds_map_exists(map, "message"))
        {
            num_rows = real(ds_map_find_value(map, "num_rows"));
            rows_perpage = real(ds_map_find_value(map, "rows_perpage"));
            pages = real(ds_map_find_value(map, "pages"));
            levels = ds_map_find_value(map, "result");
            global.map_consult = resultado;
            global.type_consult = type_consulta;
            var _num_levels = ds_list_size(levels);
            var _random_index = irandom_range(0, _num_levels - 1);
            leveldata = ds_list_find_value(levels, _random_index);
				card = obj_skip;
                card.name = ds_map_find_value(leveldata, "name")
                card.likes = ds_map_find_value(leveldata, "likes")
                card.downloads = ds_map_find_value(leveldata, "downloads")
                card.dislikes = ds_map_find_value(leveldata, "dislikes")
                card.intentos = ds_map_find_value(leveldata, "intentos")
                card.victorias = real(ds_map_find_value(leveldata, "victorias"))
                card.muertes = real(ds_map_find_value(leveldata, "muertes"))
                card.apariencia = ds_map_find_value(leveldata, "apariencia")
				card.entorno = ds_map_find_value(leveldata, "entorno")
                card.date = ds_map_find_value(leveldata, "date")
                card.author = ds_map_find_value(leveldata, "author")
                card.archivo = ds_map_find_value(leveldata, "archivo")
                card._id = ds_map_find_value(leveldata, "id")
                card.featured = ds_map_find_value(leveldata, "featured")
                card.date = ds_map_find_value(leveldata, "date")
				card.desc = ds_map_find_value(leveldata, "description")
                var record = ds_map_find_value(leveldata, "record")
                if (ds_map_find_value(record, "record") == "yes")
                {
                    card.record_name = ds_map_find_value(record, "alias")
                    card.nrecord = real(ds_map_find_value(record, "time"))
                    timer = real(ds_map_find_value(record, "time"))
                    seconds = floor((timer / 1000))
                    minutes = floor((seconds / 60))
                    milliseconds = (timer - (seconds * 1000))
                    seconds = (seconds % 60)
                    card.record = ((((string_add_zeros(minutes, 2) + ":") + string_add_zeros(seconds, 2)) + ":") + string_add_zeros(milliseconds, 3))
                }
                if (card.victorias == 0 && card.muertes == 0)
                    card.porcentaje = 0
                else if (card.victorias == 0 && card.muertes != 0)
                    card.porcentaje = 0
                else if (card.muertes == 0 && card.victorias != 0)
                    card.porcentaje = 100
                else
                {
                    card.porcentaje = ((card.victorias / card.muertes) * 100)
                    if (card.porcentaje > 100)
                        card.porcentaje = 99
                }
                user_data = ds_map_find_value(leveldata, "user_data")
                card.completed = ds_map_find_value(user_data, "completed")
                card.liked = real(ds_map_find_value(user_data, "liked"))
                etiq = ds_map_find_value(leveldata, "etiquetas")
                card.etiquetas = string_split(etiq, ",", false);
				card.etiquetas[0] = scr_etiquetas_trad(card.etiquetas[0])
				card.etiquetas[1] = scr_etiquetas_trad(card.etiquetas[1])

            loading = 0;
            mensaje = "";
            codigo = "";
            alarm[2] = -1;
        }
        else if (ds_map_exists(map, "message"))
        {
            mensaje = ds_map_find_value(map, "message");
            codigo = ds_map_find_value(map, "error_type");
            loading = 0;
            alarm[2] = -1;
        }

        ds_map_destroy(map);
    }
    else if (rows_perpage == 0)
    {
        mensaje = scr_language(180);
        codigo = "002";
        loading = 0;
        alarm[2] = -1;
    }
}