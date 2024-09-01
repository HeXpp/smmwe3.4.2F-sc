function scr_shadows() {
if (object_index == obj_coin or object_index == obj_coin10 or object_index == obj_coin10 or object_index == obj_coin30 or object_index == obj_coin50)
	var index = 0
else
	var index = image_index
	draw_sprite_ext(sprite_index, index, x + 3, y + 3, image_xscale, image_yscale, image_angle, c_black, global.fade)

}
