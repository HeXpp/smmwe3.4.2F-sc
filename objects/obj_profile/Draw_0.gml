draw_self()
draw_set_font(global.font_google)
draw_sprite_ext(spr_nm_player,global.jugador, x, y, 1.5, 1.5, 0, c_white, 1)
draw_set_color(c_color)
draw_text(x+30, y+4, string_hash_to_newline(global.my1))
draw_set_color(c_gray)
if (global.my1 == 0 
|| global.my2 == 0 
|| global.my3 == -1 
|| global.my4 == -1 
|| global.my5 == 0 
|| global.my6 == -1)
	draw_text(x+30, y+12, "Offline")
else
	draw_text(x+30, y+12, "Online")
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 2)
}
