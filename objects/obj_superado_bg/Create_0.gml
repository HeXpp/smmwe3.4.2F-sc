/*
audio_bus_main.effects[0] = undefined;
/**/
global.lives += global.liveleves
global.liveleves = 0
timer = round((global.ms + global.ms_check))
seconds = floor((timer / 1000))
minutes = floor((seconds / 60))
milliseconds = (timer - (seconds * 1000))
seconds %= 60
time = ((((string_add_zeros(minutes, 2) + ":") + string_add_zeros(seconds, 2)) + ":") + string_add_zeros(milliseconds, 3))
if (global.nm_play != 0 && has_internet())
{
    var _str = ((((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5) + "&tiempo=") + string(timer))
    url = http_post_string((((global.api_url + "stage/") + global.level_id) + "/stats/victorias"), _str)
}
image_speed = 0.5
dibujar_texto = 0
anim_record = 0
verify = 0
superado_texto = 0
anim_text = 0
loading = 0
load[1] = scr_language(76)
load[2] = scr_language(77)
rot = 0
text1 = ""
text2 = ""
c_title = make_colour_rgb(89, 15, 16)
mensaje = ""
codigo = ""
urlas = ""
audio_play_sound(snd_course_clear, 0, false)
global.mariostart = 0
global.onoffblock = 0
global.coins = 0
global.keys = 0
global.checkpoint = -4
global.checkpointroom = -4
global.checkpoint_x = 0
global.checkpoint_y = 0
global.timer = 0
score = 0
/*alarm[3] = 5*/
if instance_exists(obj_invincibility)
{
    with (obj_invincibility)
        instance_destroy()
}
if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}


