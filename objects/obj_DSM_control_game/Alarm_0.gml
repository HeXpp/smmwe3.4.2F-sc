if has_internet() and global.level_group < 6{
var difficultyd = global.difficultyd
var filter = "";
switch (difficultyd)
{
    case 2:
        filter = "";
        break;
    case 3:
        filter = "";
        break;
    default:
        filter = "&filter=likesTD";
        break;
}
var _str = ((((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5) + "&page=") + string(page) + string(filter) + "&historial=1&dificultad="+string(difficultyd)+"&sort=random")
url = http_post_string((global.api_url + "stages/detailed_search"), _str)
}
else
	alarm[0] = 5