draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);
if press = 1
draw_sprite_ext(spr_load_image, 1, (x + 34), (y + 10), 1, 1, rot, c_white, 1)
if (effect_hover == 1)
{
    anim2 += 0.3
    scr_anim_hover(x, y, anim2, 1)
}
