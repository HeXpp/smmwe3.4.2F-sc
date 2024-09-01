draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, image_angle, image_blend, image_alpha);
draw_set_font(global.font_google)
draw_set_color(c_button)
draw_set_halign(fa_center)
draw_text_color((x + (sprite_width / 2)+5), (y), string_hash_to_newline(text),c_button,c_button,c_button,c_button,image_alpha)
draw_set_halign(fa_left)