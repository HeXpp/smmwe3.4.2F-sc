if (obj_leaderboards.active == 1 && time == 0 and !instance_exists(obj_edit_menu) and !instance_exists(obj_settings_panel) )
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_panel_right_move)
        audio_play_sound(snd_panel_right_move, 0, false)
    }
    effect_hover = 1
}


