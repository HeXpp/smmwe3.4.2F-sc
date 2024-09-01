c_title = make_colour_rgb(89, 15, 16)
text[0] = "Guardar tu progreso"
text[1] = "Save your progress"
text[2] = "Salve seu progresso"
text[3] = "Salva i tuoi progressi"
text[4] = "保存你的进度"
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 59), (camera_get_view_y(view_get_camera(0)) + 154),-16, obj_DSM_save)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 154),-16, obj_DSM_load)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 328), (camera_get_view_y(view_get_camera(0)) + 38),-16, obj_DSM_alert_cloud_close)