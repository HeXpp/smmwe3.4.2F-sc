draw_self()
if (icon == 1)
    draw_sprite(spr_nm_ministar, image_index, (x + 15), (y + 5))
else
{
    draw_set_font(global.font_google)
    draw_set_color(c_color)
    draw_set_halign(fa_center)
    draw_text(round((x + (sprite_width / 2))), (y + 2), string_hash_to_newline((text)))
    draw_set_halign(fa_left)
}


