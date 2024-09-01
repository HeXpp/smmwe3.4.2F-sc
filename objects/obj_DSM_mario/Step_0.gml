if instance_exists(obj_DSM_level){
if x = obj_DSM_level.x{
	hspeed = 0
	if global.level_group == 0{
	with (obj_DSM_level)
		sprite_index = spr_DSM_level_active;
	}
}
}
if x >= 400
	room_restart()