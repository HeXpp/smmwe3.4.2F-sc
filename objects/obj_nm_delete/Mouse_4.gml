if (press == 1 && image_index != 2)
{
    audio_play_sound(snd_delete_level, 0, false)
    if (image_index == 0)
    {
        image_index = 1
        alarm[1] = 120
    }
    else
    {
        image_index = 2
        var _id = obj_nm_card_expand._id
        var _str = ((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5)
        url = http_post_string((((global.api_url + "stage/") + _id) + "/delete"), _str)
    }
}


