draw_sprite(spr_letters_super, dark, (camera_get_view_x(view_get_camera(0)) + 96), ((camera_get_view_y(view_get_camera(0)) + 36) + anim[11]))
draw_sprite(sprite, 0, (camera_get_view_x(view_get_camera(0)) + 96), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[10]))
draw_sprite(sprite, 1, (camera_get_view_x(view_get_camera(0)) + 119), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[9]))
draw_sprite(sprite, 2, (camera_get_view_x(view_get_camera(0)) + 138), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[8]))
draw_sprite(sprite, 3, (camera_get_view_x(view_get_camera(0)) + 157), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[7]))
draw_sprite(sprite, 4, (camera_get_view_x(view_get_camera(0)) + 165), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[6]))
draw_sprite(sprite, 0, (camera_get_view_x(view_get_camera(0)) + 195), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[5]))
draw_sprite(sprite, 1, (camera_get_view_x(view_get_camera(0)) + 218), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[4]))
draw_sprite(sprite, 5, (camera_get_view_x(view_get_camera(0)) + 237), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[3]))
draw_sprite(sprite, 6, (camera_get_view_x(view_get_camera(0)) + 256), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[2]))
draw_sprite(sprite, 2, (camera_get_view_x(view_get_camera(0)) + 273), ((camera_get_view_y(view_get_camera(0)) + 57) + anim[1]))
draw_sprite(spr_we, dark, (camera_get_view_x(view_get_camera(0)) + 214), ((camera_get_view_y(view_get_camera(0)) + 90) + anim[0]))
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_set_halign(fa_left)
dis = round(((98 - string_width(string_hash_to_newline(global.my1))) / 2))
draw_sprite(spr_bg_panel, 0, (camera_get_view_x(view_get_camera(0)) + 13), (camera_get_view_y(view_get_camera(0)) + 201))
draw_text(((camera_get_view_x(view_get_camera(0)) + 13) + dis), (camera_get_view_y(view_get_camera(0)) + 199), string_hash_to_newline(global.my1))
draw_set_halign(fa_center)
draw_sprite(spr_bg_panel, 0, (camera_get_view_x(view_get_camera(0)) + 143), (camera_get_view_y(view_get_camera(0)) + 201))
draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 199), string_hash_to_newline(global.ctor))
draw_set_halign(fa_left)
draw_sprite(spr_bg_panel, 1, (camera_get_view_x(view_get_camera(0)) + 333), (camera_get_view_y(view_get_camera(0)) + 201))
draw_set_font(global.font_google_legacy)
draw_text((camera_get_view_x(view_get_camera(0)) + 337.5), (camera_get_view_y(view_get_camera(0)) + 199), string_hash_to_newline(global.ver))
draw_set_font(global.font_google)
