var idioma = global.idioma;
draw_sprite_ext(spr_expand_bg, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
draw_sprite_stretched(sprite_index, 0, x, y, 308, 157)
draw_sprite_ext(spr_DSM_cloud_icona, 0, camera_get_view_x(view_get_camera(0))+83, camera_get_view_y(view_get_camera(0))+54, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_DSM_cloud_icona, 1, camera_get_view_x(view_get_camera(0))+239, camera_get_view_y(view_get_camera(0))+54, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_DSM_cloud_icon, 0, camera_get_view_x(view_get_camera(0))+93, camera_get_view_y(view_get_camera(0))+94, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_DSM_cloud_icon, 0, camera_get_view_x(view_get_camera(0))+249, camera_get_view_y(view_get_camera(0))+94, 1, 1, 0, c_white, 1)
draw_set_font(global.font_google);
draw_set_color(c_title);
draw_set_halign(fa_left);
var textWidth = string_width(string_hash_to_newline(text[idioma]));
var textX = x + (308 / 2) - (textWidth/2);
draw_text(textX, y, string_hash_to_newline(text[idioma]));
draw_set_halign(fa_left);