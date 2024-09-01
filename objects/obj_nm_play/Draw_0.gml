draw_self()
if (image_index == 1)
{
    if (time > 0)
    {
        draw_set_font(global.font_google)
        draw_set_color(c_white)
        draw_set_halign(fa_center)
        draw_text(((x + 24) + 28.5), (y + 2), string_hash_to_newline(((string(time) + "s"))))
        draw_set_halign(fa_left)
    }
    else
        draw_sprite_ext(spr_load_image, 1, (x + 54), (y + 10), 1, 1, rot, c_white, 1)
}
else
{
    draw_set_font(global.font_google)
    draw_set_color(c_button)
    draw_set_halign(fa_center)
    draw_text(((x + 24) + 28.5), (y + posy), string_hash_to_newline((text)))
    draw_set_halign(fa_left)
}
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 1)
}


