if (ds_map_find_value(async_load, "id") == urlas)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        _scores = ds_map_find_value(map,"player_name")
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