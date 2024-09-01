if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
            show_debug_message("Resultado invalido")
        global.my1 = ds_map_find_value(map,"username")
		global.lives = ds_map_find_value(map,"lives")
		global.completed_levels = ds_map_find_value(map,"progress")
		global.difficultyd = ds_map_find_value(map,"difficulty")
		global.difficulty = ds_map_find_value(map,"difficulty")
		global.level_group = real(ds_map_find_value(map,"level_group"))
		global.DSM_2 = ds_map_find_value(map,"dsm_2")
		audio_stop_sound(obj_DSM_control.dsm_music)
		scr_toast(0, "Se ha cargado el progreso")
		if global.lives > 0
			scr_save(global.difficultyd)
		instance_destroy(obj_DSM_alert_cloud)
		ds_map_destroy(map)
    }
}