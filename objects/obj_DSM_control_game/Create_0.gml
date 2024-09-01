image_speed = 0
image_index = 0
depth = 0
ready = 0
ready2 = 0
castle_pech = 0
flower = 0
anim_nubes = 0
_anim = 0
y_level = 155;
expand3 = 1
s_scalex = 0.1
s_scaley = 0.1
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
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
robot_rot = 0
ry = 10
ry_start = 10
timer = 0
c_cont = make_colour_rgb(89, 15, 16)
type_consulta = 5
url = ""
num_rows = 0
rows_perpage = 0
pages = 0
levels = 0
page = global.pages_nm
active = 0
loading = 1
rot = 0
mensaje = ""
codigo = ""
urlas = ""
pos = 54
list_post = 1
difficulty = 0
level_name = ""
creator_name = ""
style_game = ""
course_theme = ""
dificultad = ("&dificultad=" + string(3))
tiempo = ""
historial = "&historial=1"
reaccion = ""
orden = ""
search_advanced = ""
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
__background_set( e__BG.HSpeed, 0, -0.5 )
__background_set( e__BG.VSpeed, 0, -0.5 )
if global.level_group < 6
	instance_create_depth(x_level, y_level, -1,obj_DSM_level)
instance_create_depth(x_mario, 134, -2,obj_DSM_mario)
if global.difficultyd != 3{
with instance_create_depth(140, 5, 1,obj_DSM_clouds)
alarm[0] = 10;
with instance_create_depth(299.5, 0, 1,obj_DSM_clouds)
alarm[1] = 10;
with instance_create_depth(104.5, 12, 1,obj_DSM_clouds)
alarm[2] = 10;
with instance_create_depth(52, 25, 1,obj_DSM_clouds)
alarm[1] = 10;
}
else
	instance_create_depth(random_range(0,room_width),0,1,obj_DSM_lighting)


instance_create_depth((camera_get_view_x(view_get_camera(0)) + 11), (camera_get_view_y(view_get_camera(0)) + 192),-1, obj_button_dsm_back)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 280), (camera_get_view_y(view_get_camera(0)) + 11),-1, obj_dsm_record)
alarm[0] = 5