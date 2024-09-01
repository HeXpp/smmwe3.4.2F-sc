if  image_index == 0
{
    with (obj_rename_input)
        write = 0
	            with (obj_id_input)
                instance_destroy()
		file_rename(global.levelguardabot,"hola")
    audio_play_sound(snd_select_tile, 0, false)
}


