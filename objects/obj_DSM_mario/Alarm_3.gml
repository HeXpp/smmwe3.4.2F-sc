if instance_exists(obj_DSM_level){
with obj_DSM_level{
		sprite_index = spr_DSM_level_active
		s_scalex = 0.1
		s_scaley = 0.1
		expand3 = 1
	}
}
audio_play_sound(snd_DSM_level_active,0,false)