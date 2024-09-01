image_speed = 0
image_index = 0
_anim = 0
expand3 = 1
s_scalex = 0.1
s_scaley = 0.1
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
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
robot_rot = 0
ry = 10
ry_start = 10
timer = 0
url = ""
mensaje = ""
codigo = ""
pos = 54
difficulty = 0
draw = 0
global.difficultyd = 0
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
instance_create((camera_get_view_x(view_get_camera(0)) + 360), camera_get_view_y(view_get_camera(0)) + 4, obj_menu_editor_ext)
instance_create((camera_get_view_x(view_get_camera(0)) + 4), (camera_get_view_y(view_get_camera(0)) + 190), obj_button_back)
with instance_create((camera_get_view_x(view_get_camera(0)) + 13), (camera_get_view_y(view_get_camera(0)) + 29), obj_DSM_tabs){
	text = scr_language(125)
	value = 0
}
with instance_create((camera_get_view_x(view_get_camera(0)) + 104), (camera_get_view_y(view_get_camera(0)) + 29), obj_DSM_tabs){
	text = scr_language(126)
	value = 1
}
with instance_create((camera_get_view_x(view_get_camera(0)) + 195), (camera_get_view_y(view_get_camera(0)) + 29), obj_DSM_tabs){
	text = scr_language(127)
	value = 2
}
with instance_create((camera_get_view_x(view_get_camera(0)) + 286), (camera_get_view_y(view_get_camera(0)) + 29), obj_DSM_tabs){
	text = scr_language(128)
	value = 3
}
with instance_create_depth(4, 5, -10, obj_nm_profile)
	disabled = 1
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 280), (camera_get_view_y(view_get_camera(0)) + 53),-1, obj_dsm_record)
