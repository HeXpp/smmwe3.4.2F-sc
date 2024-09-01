function scr_shadow_cap() {
	if instance_exists(obj_mario)
		draw_sprite_ext(sprite_index, image_index, (obj_mario.x + pos_x + 2), ((obj_mario.y + pos_y) + 3), direct, image_yscale, image_angle, c_black, global.fade)

}
