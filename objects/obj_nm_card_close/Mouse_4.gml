if (press == 1 && instance_exists(obj_nm_play) && obj_nm_play.image_index == 0)
{
    audio_play_sound(snd_item_deselect, 0, false)
    with (obj_nm_card_expand)
        instance_destroy()
    with (obj_nm_card)
        visible = true
    with (obj_nivelesmundiales)
        alarm[1] = 10
    if (instance_exists(obj_nivelesmundiales) && obj_nivelesmundiales.type_consulta == 3)
    {
        with (obj_nivelesmundiales)
            event_user(1)
    }
}
