if global.lives > 1{
if ((!instance_exists(obj_settings_panel)) && canpress == 1 && type == 1 && image_index == 0 && ((!instance_exists(obj_nm_like_heart)) || (instance_exists(obj_nm_like_heart) && obj_nm_like_heart.loading == 0)) && ((!instance_exists(obj_nm_dislike_heart)) || (instance_exists(obj_nm_dislike_heart) && obj_nm_dislike_heart.loading == 0)))
{
    image_index = 1
    c_button = 16777215
    audio_play_sound(snd_volver_a_empezar, 0, false)
    alarm[2] = 6
}
}