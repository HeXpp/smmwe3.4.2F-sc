draw_self()
draw_set_font(global.font_google)
draw_set_color(c_etiqueta)
draw_set_halign(fa_center)
draw_text((x + (sprite_width / 2)), y, string_hash_to_newline(text_draw[idd]))
draw_set_color(c_white)
if idd = 1
	draw_text_transformed((x + (sprite_width / 2)),y-23,scr_language(191),1.5,1.5,0)
draw_set_halign(fa_left)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 1)
}


