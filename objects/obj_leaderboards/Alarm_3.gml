var map, i, leveldata, card, record, timer, seconds, minutes, milliseconds, user_data, etiq;
var map = json_decode(global.map_consult)
if (map == -1)
{
    show_debug_message("Resultado invalido")
    exit
}
if (!(ds_map_exists(map, "message")))
{
    levels = ds_map_find_value(map, "result")
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
ds_map_destroy(map)


