var tag1 = obj_nivelesmundiales.etiquetas1
var tag2 = obj_nivelesmundiales.etiquetas2
var _str2 = string(
    level_name +
    creator_name +
    style_game +
    course_theme +
    dificultad +
    tiempo +
    historial +
    reaccion +
    orden + 
	popular +
	is_prometedor +
	("&tags=" + string(scr_etiq_search(tag1))+string(",") + string(scr_etiq_search(tag2)))
);
obj_nivelesmundiales.search_advanced = _str2


