var alpha = 0.5
draw_sprite(spr_DSM_bg, global.difficultyd, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
draw_sprite(spr_DSM_grid, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
draw_sprite(spr_nm_bg, 0, 0, 0)
draw_sprite(spr_DSM_banner,global.difficultyd,0,27)
draw_sprite_stretched(spr_nm_shadow, 0, 0, 48, camera_get_view_width(view_get_camera(0)), 8)
draw_sprite_ext(spr_nm_robot, 0, 196, ry, 1, 1, robot_rot, c_white, 1)
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_text(54, 8, string_hash_to_newline(scr_language(111)))
draw_sprite(spr_nm_profile, 0, 4, 5)
draw_sprite(spr_nm_castle, 1, 34, 8)
// Assuming you have a sprite called spr_animation with multiple frames

// In the Step event of the object
_anim += 0.1; // Increment the image_index to animate the sprite

if global.DSM_2 = 0{
	draw_sprite_ext(spr_DSM_castle_peach,floor(_anim),27,86,0.5, 0.5, 0, c_white, 1);
	draw_sprite_ext(spr_DSM_line1,0,44,130,0.5, 0.5, image_angle, image_blend, alpha);
}
else if global.difficulty != global.difficultyd{
	draw_sprite_ext(spr_DSM_castle_peach,floor(_anim),27,86,0.5, 0.5, 0, c_white, 1);
	draw_sprite_ext(spr_DSM_line1,0,44,130,0.5, 0.5, image_angle, image_blend, alpha);
}
else if global.DSM_2 = 1
	draw_sprite_ext(spr_DSM_line3,0,0,154,1, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,108,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,154,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,200,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,246,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,292,152.5,0.5, 0.5, image_angle, image_blend, alpha);
draw_sprite_ext(spr_DSM_line2,0,338,152.5,0.5, 0.5, image_angle, image_blend, alpha);
// Draw 48 footers at the bottom of the screen
for (var i = 0; i < 48; i++) {
	draw_sprite_ext(spr_DSM_footer, global.difficultyd, i * 8, room_height - 29,0.5, 0.5, 0, c_white, 1);
}
if global.difficulty == global.difficultyd{
var level_count = global.level_group+1
var level_count_2 = global.level_group
var x_start = 110;
var x_offset = 46;
var y_level = 155;
var scale = 0.5;
for (var i = 0; i < level_count; i++)
{
    var x_level = x_start + (i * x_offset);
    draw_sprite_ext(spr_DSM_level, 0, x_level, y_level, scale, scale, image_angle, image_blend, 1);
}
if global.level_group >= 1{
for (var i = 0; i < level_count_2; i++)
{
    var x_level = x_start + (i * x_offset);
    var _image_index = scr_DSM_gametheme(i);
    draw_sprite_ext(spr_DSM_gametheme, _image_index, x_level, 148, s_scalex/2, s_scaley/2, image_angle, image_blend, 1);
}
}
draw_sprite_ext(spr_DSM_level_active, 0, x_mario2, 155, s_scalex/2, s_scaley/2, image_angle, image_blend, 1);
draw_sprite_ext(spr_SMB_mario_mega_victory, 0, x_mario2, 134, 0.7, 0.7, image_angle, image_blend, 1);
}