if hspeed = 0{
if victory = 0
	sprite_index = spr_SMB_mario_mega_idle
else
	sprite_index = spr_SMB_mario_mega_victory
}
else{
	sprite_index = spr_SMB_mario_mega_walk
}
    if (expand2 == 1)
    {
        s_scalex -= 0.05
        s_scaley -= 0.05
        if (s_scalex <= 0)
        {
			s_scalex = 0
			s_scaley = 0
			 expand2 = 0
        }
    }