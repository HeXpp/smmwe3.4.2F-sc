function scr_shadows_claw() {
for (i = 0; i <= segmenten; i += 1)
{
    if (i == 0)
        draw_sprite_ext(s_claw_chain, 0, knopen_x[i]+3, (knopen_y[i] - 2+3), image_xscale, image_yscale, image_angle, c_black, global.fade)	
    else if (i == segmenten)
        draw_sprite_ext(s_claw, hold, knopen_x[i]+3, knopen_y[i]+3, image_xscale, image_yscale, image_angle, c_black, global.fade)	
    else
        draw_sprite_ext(s_claw_chain, 1, knopen_x[i]+3, knopen_y[i]+3, image_xscale, image_yscale, image_angle, c_black, global.fade)	
}
}
