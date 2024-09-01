draw_self()
if (image_index == 1 && time == 0)
    draw_sprite_ext(spr_load_image, 1, (x + 12), (y + 10), 1, 1, rot, c_white, 1)
if (mensaje != "" && codigo != "")
{
    draw_set_font(global.font_google)
    draw_set_color(c_red)
    draw_set_halign(fa_center)
    draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 164), string_hash_to_newline(mensaje))
    draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 177), string_hash_to_newline(("Código: " + codigo)))
    draw_set_halign(fa_left)
}
if (time > 0)
{
    draw_set_font(global.font_google)
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text((x + (sprite_width / 2)), (y + 2), string_hash_to_newline((string(time) + "s")))
    draw_set_halign(fa_left)
}


