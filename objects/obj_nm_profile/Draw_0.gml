draw_self();
draw_sprite(spr_nm_player,global.jugador, x, y)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 2)
}
