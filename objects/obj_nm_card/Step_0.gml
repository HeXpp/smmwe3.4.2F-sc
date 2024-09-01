if (effect_hover == 1)
{
    if (scale < 1.02)
        scale += 0.005
    else
        scale = 1.02
}
else if (scale > 1)
    scale -= 0.005
else
    scale = 1
y = (start_y - (((instance_number(obj_nm_card) - 2) * 54) * global.scroll_perc))

