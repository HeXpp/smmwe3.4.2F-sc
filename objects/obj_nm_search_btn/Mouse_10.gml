if (obj_nivelesmundiales.active == 1 && time == 0)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_panel_right_move)
        audio_play_sound(snd_panel_right_move, 0, false)
    }
    effect_hover = 1
}


