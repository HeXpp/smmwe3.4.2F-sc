if (dont == 0)
{
    if (ds_map_find_value(async_load, "id") == url)
    {
        if (ds_map_find_value(async_load, "status") == 0)
        {
            var resultado = ds_map_find_value(async_load, "result")
            if (resultado == -1)
            {
				press =	0
                show_debug_message("Resultado invalido")
                exit
            }
            if (string_pos("Error", resultado) || string_pos("Code", resultado) || string_pos("Message", resultado))
            {
                time = 5
				press =	0
            }
            else
            {
				press =	1
				var coins = global.coins
				var lives_cont = global.liveleves
				scr_init_globals()
				global.coins = coins
				global.liveleves = lives_cont
                global.nm_play = resultado
				global.dsm = 1
                global.level_id = _id
                global.level_name = name
                global.level_like = liked
				global.number_like = likes
                global.tag1_pub = etiquetas[0]
                global.tag2_pub = etiquetas[1]
                global.style_course = real(apariencia)
                global.nrecord = nrecord
                global.record = record
                global.author = author
				global.intentos = intentos
                dont = 1
                room_goto(rm_guardabot_play)
            }
        }
        else if (global.nm_play == 0)
        {
            time = 5
            alarm[4] = 60
        }
    }
}