if global.completed_levels >= 1 and s_scalex > 0 and hspeed = 0
	draw_sprite_ext(spr_DSM_level_active,0,x,155,s_scalex/2,s_scaley/2,image_angle,image_blend,image_alpha);
	/*
draw_sprite_ext(spr_DSM_gametheme,scr_DSM_gametheme(),xstart,155,0.5,0.5,image_angle,image_blend,image_alpha);*/
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if instance_exists(obj_DSM_level) and victory = 0{
if x = obj_DSM_level.x{
draw_sprite_ext(spr_DSM_play, 0, x, y-4, 0.5, 0.5, image_angle, image_blend, image_alpha);
draw_set_color(c_white)
if global.idioma = 1
var _x = 1.5
else
var _x = 0
draw_text(x-10+_x, y-22, scr_language(11));
}
}