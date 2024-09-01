if (visible == true)
{
    if (room == rm_niveles_mundiales or rm_DSM or rm_leaderboards)
    {
        if ((!instance_exists(obj_edit_menu)) && (!instance_exists(obj_nm_card_expand)))
        {
            audio_play_sound(snd_back, 0, false)
            scr_init_globals()
            audio_stop_sound(snd_super_experto)
            room_goto(rm_course_world)
        }
		else if (!instance_exists(obj_edit_menu) && instance_exists(obj_nm_play) && obj_nm_play.image_index == 0)
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
	/*	
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
}*/

    }
    else
    {
        audio_play_sound(snd_inventory, 0, false)
        scr_init_globals()
        audio_stop_sound(snd_DSM_1)
        audio_stop_sound(snd_DSM_2)
        audio_stop_sound(snd_DSM_3)
        audio_stop_sound(snd_DSM_4)
        audio_stop_sound(snd_super_experto)
        audio_stop_sound(snd_guardabot)
        room_goto(rm_title)
    }
}



