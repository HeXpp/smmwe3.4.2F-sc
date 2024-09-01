if (canpress == 1)
{
    audio_play_sound(snd_aceptar, 0, false)
    with (obj_leaderboards)
    {
        mensaje = ""
        codigo = ""
        loading = 1
        alarm[0] = 5
    }
    instance_destroy()
}


