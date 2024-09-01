if !instance_exists(obj_DSM_alert_message) and !instance_exists(obj_edit_menu) and !instance_exists(obj_settings_panel) && !instance_exists(obj_DSM_alert_cloud){
global.difficulty = global.difficultyd
audio_play_sound(snd_aceptar, 0, false);
scr_save(global.difficulty)
room_goto(rm_DSM_game);	
}