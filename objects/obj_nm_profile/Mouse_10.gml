if !instance_exists(obj_edit_menu) and !instance_exists(obj_settings_panel){
effect_hover = 1
audio_stop_sound(snd_panel_right_move)
audio_play_sound(snd_panel_right_move, 0, false)
}