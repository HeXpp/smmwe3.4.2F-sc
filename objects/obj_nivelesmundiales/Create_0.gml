image_speed = 0
search_advanced = ""
style_game = -1
course_theme = -1
dificultad = -1
tiempo = -1
historial = -1
reaccion = -1
etiquetas1 = -1
etiquetas2 = -1
zona = 0
popularidad = -1
is_prometedor = -1
orden = 0
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
global.cooldown = 0
global.minutos = 0
robot_rot = 0
ry = 10
ry_start = 10
timer = 0
c_cont = make_colour_rgb(89, 15, 16)
type_consulta = 2
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
audio_play_sound(snd_super_experto, 99, true)
pos = 54
list_post = 1
__background_set( e__BG.HSpeed, 0, -0.5 )
__background_set( e__BG.VSpeed, 0, -0.5 )
instance_create((camera_get_view_x(view_get_camera(0)) + 360), camera_get_view_y(view_get_camera(0)) + 4, obj_menu_editor_ext)
instance_create((camera_get_view_x(view_get_camera(0)) + 4), (camera_get_view_y(view_get_camera(0)) + 185), obj_button_back)
with (instance_create(0, 30, obj_nm_tabs))
{
    if (global.tabvalue == 0)
    {
        obj_nivelesmundiales.type_consulta = 0
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create(86, 30, obj_nm_tabs))
{
	text = scr_language(113)
    value = 1
    if (global.tabvalue == 1)
    {
        obj_nivelesmundiales.type_consulta = 1
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create(172, 30, obj_nm_tabs))
{
	text = scr_language(114)
    value = 2
    if (global.tabvalue == 2)
    {
        obj_nivelesmundiales.type_consulta = 2
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create(258, 30, obj_nm_tabs))
{
	text = scr_language(115)
    value = 3
    if (global.tabvalue == 3)
    {
        obj_nivelesmundiales.type_consulta = 3
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create(344, 30, obj_nm_tabs))
{
    sprite_index = spr_nm_tabs_small
    text = ""
    value = 4
    icon = 1
    if (global.tabvalue == 4)
    {
        obj_nivelesmundiales.type_consulta = 4
        image_index = 1
        c_color = 16777215
    }
}
instance_create(376, 58, obj_scrollbar)
instance_create(0, 96, obj_nm_search_id_btn)
instance_create_depth(0, 136, 0, obj_nm_refresh)
instance_create_depth(4, 5, -10, obj_nm_profile)
instance_create_depth(257, 9, -2, obj_pages_button_first_page)
with (instance_create(279, 9, obj_pages_button))
    direct = 2
with (instance_create(322, 9, obj_pages_button))
    direct = 1
alarm[0] = 5
text_draw[0] = scr_language(52);
text_draw[1] = scr_language(53);
text_draw[2] = scr_language(54);
text_draw[3] = scr_language(55);
text_draw[4] = scr_language(56);
text_draw[5] = scr_language(57);
text_draw[6] = scr_language(58);
text_draw[7] = scr_language(59);
text_draw[8] = scr_language(60);
text_draw[9] = scr_language(61);
text_draw[10] = scr_language(62);
text_draw[11] = scr_language(63);
text_draw[12] = scr_language(64);
text_draw[13] = scr_language(65);
text_draw[14] = "Link";
text_draw[15] = "---"
text[0] = "Tradicional"
text[1] = "Puzles"
text[2] = "Contrarreloj"
text[3] = "Autoavance"
text[4] = "Automatismos"
text[5] = "Corto pero intenso"
text[6] = "Competitivo"
text[7] = "Tematico"
text[8] = "Música"
text[9] = "Artístico"
text[10] = "Habilidad"
text[11] = "Disparos"
text[12] = "Contra jefes"
text[13] = "En solitario"
text[14] = "Link"
text[15] = "---"

