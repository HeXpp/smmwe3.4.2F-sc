var resultado, map, leveldata, card, record, timer, seconds, minutes, milliseconds, user_data, etiq;
if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
        {
            with (obj_nivelesmundiales)
            {
                mensaje = scr_language(180)
                codigo = "002"
                loading = 0
                obj_nivelesmundiales.active = 1
                alarm[2] = -1
            }
            with (obj_id_input)
                write = 1
            image_index = 0
            exit
        }
        if (!(ds_map_exists(map, "message")))
        {
            with (obj_id_input)
                instance_destroy()
            with (obj_nm_input_text)
                instance_destroy()
            with (obj_nm_style_game)
                instance_destroy()
            with (obj_nm_course_theme)
                instance_destroy()
            with (obj_nm_dificultad)
                instance_destroy()
            with (obj_nm_tiempo)
                instance_destroy()
            with (obj_nm_historial)
                instance_destroy()
            with (obj_nm_reaccion)
                instance_destroy()
            with (obj_nm_orden)
                instance_destroy()
            with (obj_nm_search_btn)
                instance_destroy()
            with (obj_nm_idiomas)
                instance_destroy()
            with (obj_nm_popular)
                instance_destroy()
            with (obj_nm_prometedor)
                instance_destroy()
            with (obj_nm_btn_etiquetas)
                instance_destroy()
            leveldata = ds_map_find_value(map, "result")
            card = instance_create(192, 64, obj_nm_card_expand)
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
            with (card)
            {
                download = instance_create(145, 188, obj_nm_download)
                download.file = archivo
				instance_create(112, 188, obj_nm_report)
                if (global.my7 == 1 || global.my3 == 1 || global.my1 == author)
                    instance_create(68, 188, obj_nm_delete)
                if (global.my3 == 1 || global.my7 == 1)
                {
                    star = instance_create(90, 188, obj_nm_star)
                    star.image_index = real(featured)
                }
            }
            with (obj_nivelesmundiales)
            {
                loading = 0
                active = 1
                mensaje = ""
                codigo = ""
                alarm[2] = -1
            }
        }
        else if ds_map_exists(map, "message")
        {
            with (obj_nivelesmundiales)
            {
                mensaje = ds_map_find_value(map, "message")
                codigo = ds_map_find_value(map, "error_type")
                loading = 0
                obj_nivelesmundiales.active = 1
                alarm[2] = -1
            }
            with (obj_id_input)
                write = 1
            image_index = 0
        }
        ds_map_destroy(map)
    }
    else
    {
        with (obj_nivelesmundiales)
        {
            mensaje = scr_language(180)
            codigo = "002"
            loading = 0
            obj_nivelesmundiales.active = 1
            alarm[2] = -1
        }
        with (obj_id_input)
            write = 1
        image_index = 0
    }
}


