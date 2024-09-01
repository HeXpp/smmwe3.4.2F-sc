switch (global.level_group) {
    case 0:
        x_mario2 = 110;
        x_mario = 0;
        break;
    case 1:
        x_mario2 = 156;
        x_mario = 110;
        break;
    case 2:
        x_mario2 = 202;
        x_mario = 156;
        break;
    case 3:
        x_mario2 = 248;
        x_mario = 202;
        break;
    case 4:
        x_mario2 = 294;
        x_mario = 248;
        break;
    case 5:
        x_mario2 = 340;
        x_mario = 294;
        break;
    case 6:
        x_mario2 = 340;
        x_mario = 340;
        break;
    default:
        x_mario2 = 110;
        x_mario = 0;
        break;
}
switch global.difficultyd{
	case 0:
	dsm_music = snd_DSM_1
	break
	case 1:
	dsm_music = snd_DSM_2
	break
	case 2:
	dsm_music = snd_DSM_3
	break
	case 3:
	dsm_music = snd_DSM_4
	break
}
if !audio_is_playing(dsm_music){
	audio_play_sound(dsm_music, 1, true)
}
if global.difficulty != global.difficultyd
	instance_destroy(obj_DSM_button_continue)
else if global.difficulty == global.difficultyd and !instance_exists(obj_DSM_button_continue) and file_exists(working_directory + "save.dat")
	instance_create_depth((camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 195),-5, obj_DSM_button_continue)