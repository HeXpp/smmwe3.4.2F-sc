if (canpress == 1 && image_index == 0 && time == 0)
{
    audio_play_sound(snd_aceptar, 0, false)
    image_index = 1
    url = http_get(obj_nm_card_expand.archivo)
    alarm[5] = 300
}


