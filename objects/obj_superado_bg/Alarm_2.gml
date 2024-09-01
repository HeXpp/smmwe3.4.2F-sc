mensaje = scr_language(175)
codigo = "002"
loading = 0
with (obj_continue_btn)
    instance_destroy()
with (instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn)){
	if global.dsm = 0
		text = scr_language(161)
	else
		text = scr_language(160)
}
instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)

