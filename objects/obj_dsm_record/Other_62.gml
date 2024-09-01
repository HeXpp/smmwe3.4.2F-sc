if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
            show_debug_message("Resultado invalido")
		record0 = ds_map_find_value(map,"easy_record")
		record1 = ds_map_find_value(map,"normal_record")
		record2 = ds_map_find_value(map,"hard_record")
		record3 = ds_map_find_value(map,"expert_record")
		ds_map_destroy(map)
    }
}