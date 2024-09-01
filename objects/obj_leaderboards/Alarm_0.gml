var _str;
if (type_consulta != 3 && global.map_consult != -4)
    alarm[3] = 5
else
{
    switch type_consulta
    {
        case 0:
			_str = (((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5))
            url = http_post_string((global.api_url + "stages/records/leaderboard"), _str)
            break
        case 1:
			var _str =  ((("mango=" + global.token) + "&difficulty=") + string(global.hardness))
			url = http_post_string((global.api2_url + "generateleaderboard"), _str)
            break
    }

    if (type_consulta != 3)
        alarm[2] = 600
}


