var uss, _str;
uss = obj_lun.new_texto
_str =  ((("mango=" + global.token) + "&username=") + uss)
url2 = http_post_string((global.api2_url + "createuser"), _str)