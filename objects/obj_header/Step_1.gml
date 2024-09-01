image_index = page
if page = 0
	image_index = 0
else if page = 1
	image_index = 0
else if page = 2
	image_index = 1
else if page = 3
	image_index = 2
else if page = 4
	image_index = 2
else if page = 5
	image_index = 2
else if page = 6
	image_index = 2
else if page = 7
	image_index = 2
else if page = 8
	image_index = 2
else
	image_index = 3
if page != 0 && page != 1 {
	if !instance_exists(obj_btn_header_1)
		instance_create((camera_get_view_x(view_get_camera(0)) + -105), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_1)
	}
if page != 3 {
	if !instance_exists(obj_btn_header_2)
		instance_create((camera_get_view_x(view_get_camera(0)) + -105), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_2)
	}
if (obj_header.page != 3 || obj_header.page != 4 || obj_header.page != 5 || obj_header.page != 6 || obj_header.page != 7 || obj_header.page != 8) {
	if !instance_exists(obj_btn_header_3)
		instance_create((camera_get_view_x(view_get_camera(0)) + -105), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_3)
	}
if !instance_exists(obj_btn_header_4)
		instance_create((camera_get_view_x(view_get_camera(0)) + -316), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_4)

