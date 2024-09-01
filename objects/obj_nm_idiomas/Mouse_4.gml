if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var idiom = obj_nivelesmundiales.zona
    if (type == 0)
    {
        if (image_index == 1 && idiom > 0)
        {
            obj_nivelesmundiales.zona--
            if (obj_nivelesmundiales.zona == 0)
                image_index = 0
            else
            {
                with (obj_nm_idiomas)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && idiom < 4)
    {
        obj_nivelesmundiales.zona++
        if (obj_nivelesmundiales.zona == 4)
            image_index = 0
        else
        {
            with (obj_nm_idiomas)
                image_index = 1
        }
    }
}
