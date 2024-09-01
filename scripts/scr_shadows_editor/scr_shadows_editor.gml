function scr_shadows_editor() {
	if object_index != obj_ground{
	if instance_exists(obj_mario_editor) and object_index != obj_billbanzai_res and object_index != obj_checkpoint_res and object_index != obj_oneway_res and object_index != obj_arrow_res and object_index != obj_skewer_res and object_index != obj_spring_res and object_index != obj_vine_res{
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, image_angle, c_black, global.fade)
	}
	else if instance_exists(obj_mario_editor) and object_index == obj_billbanzai_res and object_index != obj_checkpoint_res and object_index != obj_oneway_res and object_index != obj_arrow_res and object_index != obj_skewer_res and object_index != obj_spring_res and object_index != obj_vine_res{
		draw_sprite_ext(sprite_index, image_index, x + 3, y + 3, image_xscale, image_yscale, rotacion, c_black, global.fade)
	}
	else if instance_exists(obj_mario_editor) and object_index == obj_oneway_res and object_index != obj_checkpoint_res and object_index != obj_billbanzai_res and object_index != obj_arrow_res and object_index != obj_skewer_res and object_index != obj_spring_res and object_index != obj_vine_res{
		draw_sprite_ext(sprite_index, image_index, x_draw + 3, y_draw + 3, s_scalex, s_scaley, rotacion, c_black, global.fade)
	}
	else if instance_exists(obj_mario_editor) and object_index == obj_oneway_res and object_index != obj_checkpoint_res and object_index != obj_billbanzai_res and object_index != obj_arrow_res and object_index != obj_skewer_res and object_index != obj_spring_res and object_index != obj_vine_res{
		draw_sprite_ext(sprite_index, image_index, x_draw + 3, y_draw + 3, s_scalex, s_scaley, rotacion, c_black, global.fade)
	}
	else if instance_exists(obj_mario_editor) and object_index == obj_arrow_res and object_index != obj_checkpoint_res and object_index != obj_billbanzai_res and object_index != obj_oneway_res and object_index != obj_skewer_res and object_index != obj_spring_res and object_index != obj_vine_res{
		draw_sprite_ext(sprite_index, image_index, x_draw+3, y_draw+3, s_scalex, s_scaley, rotacion, c_black, global.fade)
	}
	else if instance_exists(obj_mario_editor) and object_index == obj_skewer_res and object_index != obj_checkpoint_res and object_index != obj_billbanzai_res and object_index != obj_oneway_res and object_index != obj_spring_res and object_index != obj_vine_res{
		draw_sprite_ext(sprite_index, image_index, x_draw+3, y_draw+3, s_scaley, s_scaley, rotacion, c_black, global.fade)
	}
	else if instance_exists(obj_mario_editor) and object_index == obj_spring_res and object_index != obj_checkpoint_res and object_index != obj_billbanzai_res and object_index != obj_oneway_res and object_index != obj_skewer_res and object_index != obj_vine_res{
		draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, image_xscale, image_yscale, image_angle, c_black, global.fade)
	}
	}
}
