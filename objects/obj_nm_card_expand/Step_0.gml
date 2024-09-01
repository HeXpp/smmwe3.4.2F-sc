if (scale < 150)
    scale += 4
else
    scale = 150
if (mouse_x > (camera_get_view_x(view_get_camera(0)) + 228) && mouse_x < (camera_get_view_x(view_get_camera(0)) + 347) && mouse_y > (camera_get_view_y(view_get_camera(0)) + 141) && mouse_y < (camera_get_view_y(view_get_camera(0)) + 184))
{
    alpha_id = 0.4
    if mouse_check_button_pressed(mb_left)
        clipboard_set_text(_id)
}
else
    alpha_id = 1
    
    


