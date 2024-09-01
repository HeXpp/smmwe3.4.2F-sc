if (sprite_index == spr_superado_bg)
{
    image_speed = 0
    image_index = 25
    global.powerup = 0
    superado_texto = 1
    with (obj_rainmaker)
        instance_destroy()
    alarm[0] = 60
}
else if (sprite_index == spr_superado_bg2)
{
    image_speed = 0
    image_index = 12
    if (global.postnivel != 0)
    {
        if (instance_exists(obj_checkpoint) && global.postnivel == 1)
        {
            global.checkpointroom = room
            global.checkpoint_x = obj_checkpoint.x
            global.checkpoint_y = obj_checkpoint.y
            global.mariostart = 0
			global.postnivel = 2
            loading = 1
			instance_activate_all()
		global.pinkcoins_count = 0
		global.pink_coins = 0
		global.pink_coin1_x = 0
		global.pink_coin1_y = 0
		global.pink_coin2_x = 0
		global.pink_coin2_y = 0
		global.pink_coin3_x = 0
		global.pink_coin3_y = 0
		global.pink_coin4_x = 0
		global.pink_coin4_y = 0
		global.pink_coin5_x = 0
		global.pink_coin5_y = 0
		global.pink_coin6_x = 0
		global.pink_coin6_y = 0
		global.pink_coin7_x = 0
		global.pink_coin7_y = 0
		global.pink_coin8_x = 0
		global.pink_coin8_y = 0
		global.pink_coin9_x = 0
		global.pink_coin9_y = 0
		global.pink_coin10_x = 0
		global.pink_coin10_y = 0
		scr_restart()
		if audio_is_playing(snd_course_clear)
			audio_stop_sound(snd_course_clear)
        }
        else
        {
            loading = 2
            global.postnivel = 0
        }
        alarm[1] = 120
        verify = 1
    }
    else if (global.postnivel = 0) && (global.verpub == 0)
    {
        instance_deactivate_all(true)
        instance_activate_object(obj_persistent)
        instance_activate_object(obj_levelmanager)
        if (!instance_exists(obj_cursor))
            instance_create(0, 0, obj_cursor)
        dibujar_texto = 1
        if (global.nm_play != 0)
        {
            instance_create((camera_get_view_x(view_get_camera(0)) + 279), (camera_get_view_y(view_get_camera(0)) + 109), obj_nm_dislike_heart)
            instance_create((camera_get_view_x(view_get_camera(0)) + 341), (camera_get_view_y(view_get_camera(0)) + 109), obj_nm_like_heart)
        }
        instance_create((camera_get_view_x(view_get_camera(0)) + 18), (camera_get_view_y(view_get_camera(0)) + 148), obj_button_superado)
        with (instance_create((camera_get_view_x(view_get_camera(0)) + 142), (camera_get_view_y(view_get_camera(0)) + 148), obj_button_superado))
        {
            type = 1
			if global.dsm = 0
				text = scr_language(161)
			else
				text = scr_language(160)
			x1 = 142
        }
    }
    }

