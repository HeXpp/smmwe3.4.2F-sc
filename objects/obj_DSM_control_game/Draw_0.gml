var alpha = 0.5
var difficultyd = global.difficultyd
var shadow_sprite = spr_DSM_shadow;
draw_sprite(spr_DSM_bg,difficultyd, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
draw_sprite(spr_DSM_grid, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
if (difficultyd == 1) {
    shadow_sprite = spr_DSM_shadow_1;
} else if (difficultyd == 2 or difficultyd == 3) {
    shadow_sprite = spr_DSM_shadow_2;
}
draw_sprite_ext(shadow_sprite, 0, 0, 0, 0.5, 0.5, image_angle, image_blend, 1);
with (obj_DSM_clouds) {
    draw_sprite_ext(spr_DSM_cloud, difficultyd, x, y, 0.5, 0.5, 0, c_white, 1);
}
with (obj_DSM_lighting) {
    draw_sprite_ext(spr_DSM_lighting, 0, x, y, 0.5, 0.5, 0, c_white, image_alpha);
}
draw_sprite_ext(spr_SMB_mario_mega_idle, 0, 21, 13,0.5, 0.5, 0, c_white, 1);
draw_sprite_ext(spr_dsm_x,0,29,18,0.5, 0.5, 0, c_white, 1);
draw_set_font(global.numbers_lives)
draw_set_color(c_white)
if (global.lives < 10)
{
    var livesString = "0" + string(global.lives);
}
else
	var livesString = string(global.lives)
// Draw the number of lives on the screen
draw_text_transformed(40, 14, livesString,0.5,0.5,0)
draw_sprite_ext(spr_DSM_level_icon,0,76,13,0.5, 0.5, 0, c_white, 1);
draw_text_transformed(93, 14, string(global.completed_levels),0.5,0.5,0)
_anim += 0.1
if global.DSM_2 = 0{
	draw_sprite_ext(spr_DSM_castle_peach,floor(_anim),27,86,0.5, 0.5, 0, c_white, 1);
	draw_sprite_ext(spr_DSM_line1,0,44,130,0.5, 0.5, image_angle, image_blend, alpha);
}
else
	draw_sprite_ext(spr_DSM_line3,0,0,154,1, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,108,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,154,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,200,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,246,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,292,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,338,152.5,0.5, 0.5, image_angle, image_blend, alpha);
var level_count = global.level_group
var x_start = 110;
var x_offset = 46;
var y_level = 155;
var scale = 0.5;

for (var i = 0; i < level_count; i++)
{
    var x_level = x_start + (i * x_offset);
    draw_sprite_ext(spr_DSM_level, 0, x_level, y_level, scale, scale, image_angle, image_blend, 1);
}
for (var i = 0; i < level_count; i++)
{
    var x_level = x_start + (i * x_offset);
    var _image_index = scr_DSM_gametheme(i);
    draw_sprite_ext(spr_DSM_gametheme, _image_index, x_level, 148, s_scalex/2, s_scaley/2, image_angle, image_blend, 1);
}