if (hspeed != 0 && instance_exists(id))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
}

