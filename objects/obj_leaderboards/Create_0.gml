image_speed = 0
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
global.tabvalue = 0
global.hardness = "easy"
robot_rot = 0
ry = 10
ry_start = 10
timer = 0
c_cont = make_colour_rgb(89, 15, 16)
type_consulta = 0
url = ""
cantidad = ""
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
conto = 0
conto2 = 0
conto3 = 0
audio_play_sound(snd_super_experto, 99, true)
pos = 54
list_post = 1
__background_set( e__BG.HSpeed, 0, -0.5 )
__background_set( e__BG.VSpeed, 0, -0.5 )
instance_create((camera_get_view_x(view_get_camera(0)) + 360), camera_get_view_y(view_get_camera(0)) + 4, obj_menu_editor_ext)
instance_create((camera_get_view_x(view_get_camera(0)) + 4), (camera_get_view_y(view_get_camera(0)) + 185), obj_button_back)
with (instance_create_depth(0, 30,-2, obj_lb_tabs))
{
	value = 0
    if (global.tabvalue == 0)
    {
        obj_leaderboards.type_consulta = 0
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create_depth(193, 30,-2, obj_lb_tabs))
{
	text = scr_language(111)
    value = 1
    if (global.tabvalue == 1)
    {
        obj_leaderboards.type_consulta = 1
        image_index = 1
        c_color = 16777215
    }
}
instance_create_depth(376, 58, -3,obj_scrollbar4)
instance_create_depth(4, 5, -10, obj_nm_profile)
alarm[0] = 5
