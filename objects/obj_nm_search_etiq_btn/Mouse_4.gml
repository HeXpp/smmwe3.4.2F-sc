if (obj_nivelesmundiales.active == 1 && press == 1 && (!instance_exists(obj_id_input)) && visible = 1)
{
    audio_play_sound(snd_select_tile, 0, false)
    instance_create(107, 72, obj_id_input)
    instance_create(357, 11, obj_btn_close_search)
}


