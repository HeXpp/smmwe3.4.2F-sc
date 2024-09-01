if has_internet(){
	if press = 0
		audio_play_sound(snd_letsgo, 0, false)
	press =	1
	image_index = 1
	alarm[3] = 1
}
else{
	audio_stop_sound(snd_wrong)
	audio_play_sound(snd_wrong,0,false)
}