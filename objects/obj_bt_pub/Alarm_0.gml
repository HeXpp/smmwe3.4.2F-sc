for (i = 0; i < 20; i++)
{
    if (string_count(word[i], string_lower(global.levelguardabot)) > 0)
        verify = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 52), obj_alert_message))
{
    if (other.verify == 1)
    {
        pub = 0
        text = scr_language(177)
    }
    else
        instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 132), obj_alert_button)
}


