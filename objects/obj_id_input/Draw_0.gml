var new_string;
draw_self()
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_text(x, (y - 14), string_hash_to_newline(scr_language(116)))
draw_set_color(c_black)
new_string = new_texto
draw_text((x + 7), (y + 2), string_hash_to_newline(new_string))


if sprite_exists(back)
{
    gpu_set_blendenable(false)
    sx = 0.5
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(true)
}
draw_sprite_ext(spr_search_bg, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), camera_get_view_width(view_get_camera(0)) / 16, camera_get_view_height(view_get_camera(0)) / 16, 0, c_white, 1)
draw_self()
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_text((x + 48), (y - 18), string_hash_to_newline((scr_language(116))))
draw_set_color(c_black)
var new_string = new_texto
draw_text((x + 7), (y + 2), string_hash_to_newline((new_string)))


