switch (global.level_group) {
    case 0:
        x_level = 110;
        x_mario = 0;
        break;
    case 1:
        x_level = 156;
        x_mario = 110;
        break;
    case 2:
        x_level = 202;
        x_mario = 156;
        break;
    case 3:
        x_level = 248;
        x_mario = 202;
        break;
    case 4:
        x_level = 294;
        x_mario = 248;
        break;
    case 5:
        x_level = 340;
        x_mario = 294;
        break;
    case 6:
        x_level = 340;
        x_mario = 340;
        break;
    default:
        x_level = 110;
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
event_user(0)