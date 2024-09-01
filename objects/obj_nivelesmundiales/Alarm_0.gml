var _str;
if (type_consulta != 3 && global.map_consult != -4)
    alarm[3] = 5
else
{
    switch type_consulta
    {
        case 0:
            _str = (((((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5) + "&page=") + string(page)) + "&featured=promising")
            url = http_post_string((global.api_url + "stages/detailed_search"), _str)
            break
        case 1:
            _str = ("token=" + global.token + "&discord_id=" + global.my2 + "&auth_code=" + global.my5 + "&page=" + string(page) + "&featured=notpromising&sort=popular&last=7d&filter=likesTD")
            url = http_post_string((global.api_url + "stages/detailed_search"), _str)
            break
        case 2:
			_str = ((((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5 + "&page=") + string(page)))
            url = http_post_string((global.api_url + "stages/detailed_search"), _str)
            break
        case 3:
            event_user(1)
            break
        case 4:
            _str = ((((((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5) + "&page=") + string(page)) + "&liked=") + global.my2)
            url = http_post_string((global.api_url + "stages/detailed_search"), _str)
            break
        case 5:
            _str = ((((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5) + "&page=") + string(page))
            var datos = (_str + search_advanced)
            url = http_post_string((global.api_url + "stages/detailed_search"), datos)
            break
    }

    if (type_consulta != 3)
        alarm[2] = 600
}


