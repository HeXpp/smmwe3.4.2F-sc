if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var prom = obj_nivelesmundiales.is_prometedor
    if (type == 0)
    {
        if (image_index == 1 && prom > -1)
        {
            obj_nivelesmundiales.is_prometedor--
            if (obj_nivelesmundiales.is_prometedor == -1)
                image_index = 0
            else
            {
                with (obj_nm_prometedor)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && prom < 1)
    {
        obj_nivelesmundiales.is_prometedor++
        if (obj_nivelesmundiales.is_prometedor == 1)
            image_index = 0
        else
        {
            with (obj_nm_prometedor)
                image_index = 1
        }
    }
    switch obj_nivelesmundiales.is_prometedor
    {
        case -1:
            data = ""
            break
        case 0:
            data = ("&featured=promising")
            break
        case 1:
            data = ("&featured=notpromising")
            break
    }

    obj_nm_search_btn.is_prometedor = data
}


