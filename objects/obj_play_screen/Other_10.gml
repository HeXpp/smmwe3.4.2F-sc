if (!instance_exists(obj_button_home))
{
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 108), obj_button_home))
    {
        image_index = 1
        depth = -25
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 141), obj_button_home))
    {
        image_index = 2
        depth = -25
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 174), obj_button_home))
    {
        image_index = 3
        depth = -25
    }
}

