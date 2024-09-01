function scr_shadow_yoshi() {
if instance_exists(obj_mario)
{
    if (turning != 0)
    {
        draw_sprite_ext(sprite_index, -1, (round(x) + obj_mario.shake + 2), round(y) + 2, direct, 1, 0, c_black, global.fade)
    }
    else
    {
        draw_sprite_ext(sprite_index, -1, (round(x) + obj_mario.shake + 2), round(y) + 2, direct, 1, 0, c_black, global.fade)
    }
}
}
