if instance_exists(obj_superado_bg){
var _x = camera_get_view_x(view_get_camera(0)) + 341
var _y = camera_get_view_y(view_get_camera(0)) + 109
}
else{
	var _x = x
	var _y = y
}
draw_sprite_ext(sprite_index, image_index, _x, _y, scale, scale, 0, c_white, 1)
if (loading == 1)
    draw_sprite_ext(spr_load_image, (type + 2), _x, _y, 1, 1, rot, c_white, 1)
else if (time > 0)
{
    draw_set_font(global.font_google)
    draw_set_color(c_color)
    draw_set_halign(fa_center)
    draw_text(_x, _y, string_hash_to_newline(((string(time) + "s"))))
    draw_set_halign(fa_left)
}
else
{
    draw_sprite_ext(sprite_heart, index_heart, _x, (_y - 6), scale_heart, scale_heart, 0, c_white, 1)
    draw_set_font(global.font_google)
    draw_set_color(c_color)
    draw_set_halign(fa_center)
    draw_text(_x, (_y + 2), string_hash_to_newline((text)))
    draw_set_halign(fa_left)
}
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover((_x - 28), (_y - 28), anim, 0)
}


