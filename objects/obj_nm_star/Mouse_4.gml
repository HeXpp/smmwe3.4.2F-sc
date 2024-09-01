if (press == 1)
{
    audio_play_sound(snd_aceptar, 0, false)
    var _id = obj_nm_card_expand._id
    var _str = ((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5)
    url = http_post_string((((global.api_url + "stage/") + _id) + "/switch/promising"), _str)
}
