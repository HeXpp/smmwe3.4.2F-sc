if (disabled == 0)
{
    if (selected == 0)
    {
        if (obj_nivelesmundiales.etiquetas1 == -1)
        {
            audio_play_sound(snd_aceptar, 0, false)
            obj_nivelesmundiales.etiquetas1 = idd
            selected = 1
            if (obj_nivelesmundiales.etiquetas1 != -1 && obj_nivelesmundiales.etiquetas2 != -1)
            {
                with (obj_nm_btn_etiquetas)
                {
                    if (selected == 0)
                        disabled = 1
                }
            }
        }
        else if (obj_nivelesmundiales.etiquetas2 == -1)
        {
            audio_play_sound(snd_aceptar, 0, false)
            obj_nivelesmundiales.etiquetas2 = idd
            selected = 1
            if (obj_nivelesmundiales.etiquetas1 != -1 && obj_nivelesmundiales.etiquetas2 != -1)
            {
                with (obj_nm_btn_etiquetas)
                {
                    if (selected == 0)
                        disabled = 1
                }
            }
        }
    }
    else
    {
        audio_play_sound(snd_item_deselect, 0, false)
        selected = 0
        if (obj_nivelesmundiales.etiquetas1 == idd)
            obj_nivelesmundiales.etiquetas1 = -1
        else if (obj_nivelesmundiales.etiquetas2 == idd)
            obj_nivelesmundiales.etiquetas2 = -1
        if (obj_nivelesmundiales.etiquetas1 == -1 || obj_nivelesmundiales.etiquetas2 == -1)
        {
            with (obj_nm_btn_etiquetas)
                disabled = 0
        }
    }
}
