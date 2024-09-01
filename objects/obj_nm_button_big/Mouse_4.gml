if (disabled == 0 && (!instance_exists(obj_edit_menu)))
{
    audio_play_sound(snd_aceptar, 0, false)
    audio_stop_sound(snd_super_experto)
    switch image_index
    {
        case 0:
            room_goto(rm_niveles_mundiales)
            break
        case 1:
			room_goto(rm_leaderboards)
            break
        case 2:
            audio_stop_sound(snd_wrong)
            audio_play_sound(snd_wrong, 0, false)
            break
        case 3:
			room_goto(rm_DSM)
            break
    }

}


