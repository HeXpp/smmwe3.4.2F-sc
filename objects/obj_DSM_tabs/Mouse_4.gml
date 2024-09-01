if !instance_exists(obj_DSM_alert_message) and !instance_exists(obj_edit_menu) and !instance_exists(obj_settings_panel) && !instance_exists(obj_DSM_alert_cloud){
if global.difficultyd != value{
global.difficultyd = value
audio_stop_sound(obj_DSM_control.dsm_music)
if instance_exists(obj_dsm_record){
	/*instance_destroy(obj_dsm_record)
	instance_create_depth((camera_get_view_x(view_get_camera(0)) + 280), (camera_get_view_y(view_get_camera(0)) + 53),-1, obj_dsm_record)*/
	with (obj_dsm_record)
		alarm[0] = 5
}
}
}