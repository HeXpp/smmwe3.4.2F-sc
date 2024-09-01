if (global.difficultyd == 0)
    global.lives = 10
else if (global.difficultyd == 1)
    global.lives = 15
else if (global.difficultyd == 2)
    global.lives = 20
else if (global.difficultyd == 3)
    global.lives = 30
global.completed_levels = 0
global.level_group = 0
global.DSM_2 = 0

if file_exists((working_directory + "save.dat")){
scr_load()
}
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 285), (camera_get_view_y(view_get_camera(0)) + 195),-5, obj_DSM_button)
if global.difficulty == global.difficultyd and !instance_exists(obj_DSM_button_continue) and file_exists(working_directory + "save.dat")
	instance_create_depth((camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 195),-5, obj_DSM_button_continue)
