var _like, etiq, cal;
draw_sprite_ext(sprite_index, 0, x, y, scale, 1, 0, c_white, 1)
draw_sprite(spr_carteles_small, real(apariencia), (x - 123), y)
draw_sprite(spr_nm_card_image, real(entorno), (x - 123), (y + 13))
draw_sprite(spr_nm_card_image_fade, 0, (x - 123), (y + 13))
draw_set_font(global.font_google)
draw_set_color(c_color)
draw_text((x - 94), (y - 1), string_hash_to_newline(name))
draw_set_color(c_white)
draw_text((x - 121), (y + 38), string_hash_to_newline((date)))
draw_set_color(c_color)
if (completed != "no")
{
    draw_sprite(spr_nm_icons, 7, (x + 110), (y + 2))
    if (featured == "1")
        draw_sprite(spr_nm_icons, 8, (x + 94), (y + 2))
}
else if (featured == "1")
    draw_sprite(spr_nm_icons, 8, (x + 110), (y + 2))
if (liked == 0)
    _like = 9
else
    _like = 0
draw_sprite(spr_nm_icons, _like, (x - 44), (y + 18))
draw_text((x - 30), (y + 14), string_hash_to_newline(likes))
draw_sprite(spr_nm_icons, 1, (x - (31 - (string_width(string_hash_to_newline(likes)) + 8))), (y + 18))
draw_text((x - (30 - (string_width(string_hash_to_newline(likes)) + 21))), (y + 14), string_hash_to_newline(intentos))
if (etiquetas[0] == "---")
    etiq = etiquetas[1]
else
    etiq = etiquetas[0]
draw_sprite(spr_nm_icons, 3, (x - 44), (y + 36))
draw_text((x - 30), (y + 32), string_hash_to_newline(etiq))
cal = ((sprite_width - string_width(string_hash_to_newline(author))) - 132)
draw_text((x + cal), (y + 32), string_hash_to_newline(author))

