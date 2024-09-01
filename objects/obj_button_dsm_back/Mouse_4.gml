if (visible == true)
{
        audio_play_sound(snd_back, 0, false)
        scr_init_globals()
        audio_stop_sound(snd_DSM_1)
        audio_stop_sound(snd_DSM_2)
        audio_stop_sound(snd_DSM_3)
        audio_stop_sound(snd_DSM_4)
        audio_stop_sound(snd_super_experto)
        audio_stop_sound(snd_guardabot)
        room_goto(rm_DSM)
}



