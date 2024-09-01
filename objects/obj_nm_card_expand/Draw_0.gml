var _like, etiq, cal, porc;
draw_sprite(spr_nm_card_expand, 0, (x - 130), y-15)
draw_sprite(spr_carteles_small, real(apariencia), (x - 126), y-14)
draw_sprite(spr_nm_card_image, real(entorno), (x - 126), (y + -1))
draw_sprite(spr_nm_card_image_fade, 0, (x - 126), (y + -1))
draw_set_font(global.font_google)
draw_set_color(c_color)
draw_text((x - 93), (y - 15), string_hash_to_newline(name))
draw_text((x - 115), (y + 40), string_hash_to_newline(desc))
if (completed != "no")
{
    draw_sprite(spr_nm_icons, 7, (x + 107), (y - 5))
    if (featured == "1")
        draw_sprite(spr_nm_icons, 8, (x + 91), (y - 5))
}
else if (featured == "1")
    draw_sprite(spr_nm_icons, 8, (x + 107), (y - 5))
if (des == 0)
{
    if (liked == 0)
        _like = 9
    else
        _like = 0
    draw_sprite(spr_nm_icons, _like, (x - 46), (y + 10))
    draw_text((x - 33), (y + 6), string_hash_to_newline(likes))
}
else
{
    if (liked == 1)
        _like = 10
    else
        _like = 6
    draw_sprite(spr_nm_icons, _like, (x - 46), (y + 10))
    draw_text((x - 33), (y + 6), string_hash_to_newline(dislikes))
}
draw_sprite(spr_nm_icons, 1, (x - (33 - (string_width(string_hash_to_newline(likes)) + 8))), (y + 10))
draw_text((x - (33 - round((string_width(string_hash_to_newline(likes)) + 21)))), (y + 6), string_hash_to_newline(intentos))
if (etiquetas[0] == "---")
    etiq = etiquetas[1]
else
    etiq = etiquetas[0]
draw_sprite(spr_nm_icons, 3, (x - 46), (y + 22))
if des = 0
	draw_text((x - 33), (y + 18), string_hash_to_newline((etiquetas[0])))
else
	draw_text((x - 33), (y + 18), string_hash_to_newline((etiquetas[1])))
cal = round(((sprite_width - string_width(string_hash_to_newline((author)))) - 144))
draw_text((x + cal), (y + 24), string_hash_to_newline((author)))
draw_set_color(c_white)
draw_text((x - 124), (y + 24), string_hash_to_newline((date)))
draw_set_color(c_color)
draw_sprite_stretched_ext(spr_expand_bg, 4, (x + 8), (y + 75), 110, 33, c_white, alpha_id)
draw_set_color(c_color2)
draw_text((x - 109), (y + 72), string_hash_to_newline(("Record"+recorde)))
draw_text((x - (round((string_width(string_hash_to_newline((scr_language(146)))) / 2)) + 28)), (y + 72), string_hash_to_newline((scr_language(146))))
draw_text((x + 40), (y + 72), string_hash_to_newline((scr_language(144))))
draw_set_color(c_color)
draw_sprite(spr_nm_icons, 11, 299, 140)
if (record_name == "")
    draw_text(((x - 95) - round((string_width(string_hash_to_newline((scr_language(145)))) / 2))), (y + 85), string_hash_to_newline((scr_language(145))))
else
{
    draw_text(((x - 95) - round((string_width(string_hash_to_newline((record))) / 2))), (y + 85), string_hash_to_newline((record)))
    draw_text(((x - 95) - round((string_width(string_hash_to_newline((record_name))) / 2))), (y + 95), string_hash_to_newline((record_name)))
}
if (des == 0)
{
    draw_sprite(spr_nm_icons, 2, (x - ((string_width(string_hash_to_newline((muertes))) / 2) + 34)), (y + 85))
    draw_text((x - (round((string_width(string_hash_to_newline((muertes))) / 2)) + 20)), (y + 81), string_hash_to_newline((muertes)))
    draw_sprite_stretched(spr_expand_bg, 5, (x - 50), (y + 95), 45, 1)
    draw_sprite(spr_nm_icons, 5, (x - ((string_width(string_hash_to_newline((victorias))) / 2) + 36)), (y + 99))
    draw_text((x - (round((string_width(string_hash_to_newline((victorias))) / 2)) + 20)), (y + 95), string_hash_to_newline((victorias)))
}
else
{
    porc = (string(porcentaje) + "%")
    draw_text((x - (round((string_width(string_hash_to_newline((porc))) / 2)) + 26)), (y + 85), string_hash_to_newline((porc)))
}
draw_text((x + 18), (y + 90), string_hash_to_newline((_id)))