if (!instance_exists(obj_lb_card) && loading == 1)
{
    mensaje = scr_language(173)
    codigo = "002"
    loading = 0
    obj_leaderboards.active = 1
    with (obj_lb_button_retry)
        instance_destroy()
    instance_create_depth((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 126),-3, obj_lb_button_retry)
}


