if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var pop = obj_nivelesmundiales.popularidad
    if (type == 0)
    {
        if (image_index == 1 && pop > -1)
        {
            obj_nivelesmundiales.popularidad--
            if (obj_nivelesmundiales.popularidad == -1)
                image_index = 0
            else
            {
                with (obj_nm_popular)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && pop < 1)
    {
        obj_nivelesmundiales.popularidad++
        if (obj_nivelesmundiales.popularidad == 1)
            image_index = 0
        else
        {
            with (obj_nm_popular)
                image_index = 1
        }
    }
    switch obj_nivelesmundiales.popularidad
    {
        case -1:
            data = ""
            break
        case 0:
            data = ("&sort=popular&filter=likesTD")
            break
        case 1:
            data = ("&sort=notpopular&filter=dislikesTL")
            break
    }

    obj_nm_search_btn.popular = data
}


