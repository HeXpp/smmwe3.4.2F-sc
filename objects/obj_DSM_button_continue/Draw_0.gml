draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, image_angle, image_blend, image_alpha);
draw_set_font(global.font_google)
draw_set_color(c_button)
draw_set_halign(fa_center)
draw_text((x + 45), (y), string_hash_to_newline((text)))
draw_set_halign(fa_left)
if (effect_hover == 1)
{
    anim2 += 0.3
    scr_anim_hover(x, y, anim2, 2)
}