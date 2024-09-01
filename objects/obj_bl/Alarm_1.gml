var uss, pps, _str;
uss = obj_lun.new_texto
pps = obj_lp.new_texto
_str = ((((("token=" + global.token) + "&alias=") + uss) + "&password=") + pps)
url = http_post_string((global.api_url + "user/login"), _str)