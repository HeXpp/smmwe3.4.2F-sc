if (obj_nivelesmundiales.active == 1)
{
	if (obj_nivelesmundiales.page > 1){
            obj_nivelesmundiales.page = 1
            global.pages_nm = 1
            global.map_consult = -4
            global.type_consult = -4
            with (obj_nivelesmundiales)
            {
                event_user(0)
                loading = 1
                obj_nivelesmundiales.active = 0
                alarm[0] = 5
            }
	}
}