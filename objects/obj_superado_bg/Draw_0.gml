var level,superado_text_sprite;
if global.idioma = 1 or global.idioma = 4
	superado_text_sprite = spr_superado_text_en
else
	superado_text_sprite = spr_superado_text
draw_sprite_ext(sprite_index, image_index, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 9, 9, 0, c_white, 1)
if (superado_texto == 1)
    draw_sprite_ext(superado_text_sprite, anim_text, (camera_get_view_x(view_get_camera(0)) + 85), (camera_get_view_y(view_get_camera(0)) + 104), 1, 1, 0, c_white, 1)
draw_set_font(global.font_google)
draw_set_color(c_title)
if (loading != 0 || (text1 != "" && verify == 1))
{
    draw_sprite_ext(spr_expand_bg, 2, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
    draw_sprite_stretched(spr_window_alert, 0, (camera_get_view_x(view_get_camera(0)) + 84), (camera_get_view_y(view_get_camera(0)) + 55), 216, 100)
    draw_set_halign(fa_center)
    if (loading != 0)
    {
        draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 103), string_hash_to_newline(load[loading]))
        draw_sprite_ext(spr_load_image, 0, (camera_get_view_x(view_get_camera(0)) + 350), (camera_get_view_y(view_get_camera(0)) + 186), 1, 1, rot, c_white, 1)
    }
    else if (text1 != "")
    {
        draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 89), string_hash_to_newline(text1))
        draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 105), string_hash_to_newline(("ID: " + text2)))
    }
    draw_set_halign(fa_left)
}
if (dibujar_texto == 1)
{
    if (global.nm_play != 0)
        draw_text((camera_get_view_x(view_get_camera(0)) + 18), (camera_get_view_y(view_get_camera(0)) + 58), string_hash_to_newline(global.level_name))
    else
    {
        level = scr_add3points(global.levelguardabot, 270, 52)
        draw_text((camera_get_view_x(view_get_camera(0)) + 18), (camera_get_view_y(view_get_camera(0)) + 58), string_hash_to_newline(level))
    }
    draw_sprite(spr_nm_icons, 3, (camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 84))
    draw_sprite(spr_nm_icons, 3, (camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 97))
    draw_text((camera_get_view_x(view_get_camera(0)) + 29), (camera_get_view_y(view_get_camera(0)) + 80), string_hash_to_newline(global.tag1_pub))
    draw_text((camera_get_view_x(view_get_camera(0)) + 29), (camera_get_view_y(view_get_camera(0)) + 93), string_hash_to_newline(global.tag2_pub))
    draw_sprite(spr_nm_icons, 4, (camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 116))
    draw_text((camera_get_view_x(view_get_camera(0)) + 29), (camera_get_view_y(view_get_camera(0)) + 112), string_hash_to_newline(time))
    if (global.nrecord == 0)
        draw_sprite(spr_1stclear, anim_record, (camera_get_view_x(view_get_camera(0)) + 78), (camera_get_view_y(view_get_camera(0)) + 114))
    else if (timer < global.nrecord)
        draw_sprite(spr_nrecord, anim_record, (camera_get_view_x(view_get_camera(0)) + 78), (camera_get_view_y(view_get_camera(0)) + 114))
}
if (mensaje != "" && codigo != "" && verify == 1)
{
    draw_set_color(c_red)
    draw_set_halign(fa_center)
    draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 103), string_hash_to_newline(((mensaje + " Código: ") + codigo)))
    draw_set_halign(fa_left)
}


