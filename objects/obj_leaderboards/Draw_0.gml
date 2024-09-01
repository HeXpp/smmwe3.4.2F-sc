var pos;
if (!instance_exists(obj_id_input))
{
    draw_sprite(spr_nm_bg, 0, 0, 0)
    draw_sprite_stretched(spr_nm_shadow, 0, 0, 48, camera_get_view_width(view_get_camera(0)), 8)
    draw_sprite_ext(spr_nm_robot, 0, 196, ry, 1, 1, robot_rot, c_white, 1)
    draw_set_font(global.font_google)
    draw_set_color(c_white)
    draw_sprite(spr_nm_castle, 0, 34, 8)
	draw_text(54, 8, string_hash_to_newline(scr_language(109)))
}
if (loading == 1)
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
     draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 119), string_hash_to_newline(scr_language(107)))
    draw_sprite_ext(spr_load_image, 1, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 108), 1, 1, rot, c_white, 1)
    draw_set_halign(fa_left)
}
if (mensaje != "" && codigo != "")
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 102), string_hash_to_newline(((mensaje + " Código: ") + codigo)))
    draw_set_halign(fa_left)
}