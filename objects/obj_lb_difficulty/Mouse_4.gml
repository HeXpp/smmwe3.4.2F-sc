if (obj_leaderboards.active == 1 and !instance_exists(obj_edit_menu) and !instance_exists(obj_settings_panel))
{
    audio_play_sound(snd_select_tile, 0, false)
	global.map_consult = -4
    global.type_consult = -4
    global.pages_nm = 1
	global.tabvalue = 1
	if global.hardness = "easy"{
		image_index = 1
	global.hardness = "normal"
	}
	else if global.hardness = "normal"{
		image_index = 2
	global.hardness = "hard"
	}
	else if global.hardness = "hard"{
		image_index = 3
	global.hardness = "expert"
	}
	else if global.hardness = "expert"{
		image_index = 0
	global.hardness = "easy"
	}
    with (obj_leaderboards)
    {
        page = 1
		pages = 1
        mensaje = ""
        codigo = ""
        type_consulta = 1
		event_user(0)
		alarm[0] = 5
    }
}


