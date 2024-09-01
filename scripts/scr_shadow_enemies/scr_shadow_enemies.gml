function scr_shadow_enemies() {
	
if sprite_exists(sprite_index) and (image_number <= sprite_get_number(sprite_index))
{ 
	if (object_index == obj_banzaibill) {
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, 1, direct, rotacion, c_black, global.fade)
	}
	else if (object_index == obj_cannon){
		draw_sprite_ext(sprite_index, (direct / 45), x+2, y+2, 1, 1, 0, c_black, global.fade)
	}
	else if (object_index == obj_arrow){
		draw_sprite_ext(sprite_index, image_index, x+3, y+3, 1, 1, rotacion, c_black, global.fade)
	}
	else if (object_index == obj_onewaygate_bottom) or (object_index == obj_onewaygate_top) or (object_index == obj_onewaygate_left or (object_index == obj_onewaygate_right)){
		draw_sprite_ext(sprite_index, image_index, x+3, y+3, 1, 1, rotacion, c_black, global.fade)
	}
	else if (object_index == obj_icicle) or (object_index == obj_icicle2) or (object_index == obj_mini_icicle) or (object_index == obj_mini_icicle2){
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, image_angle, c_black, global.fade)	
	}
	else{
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, direct, image_yscale, image_angle, c_black, global.fade)	
	}
}
}
