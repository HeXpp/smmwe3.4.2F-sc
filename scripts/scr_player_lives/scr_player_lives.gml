// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_lives(){
switch global.apariencia{
	case 0:
	return spr_DSM_SMB_lives;
	break
	case 1:
	return spr_DSM_SMB3_lives;
	break
	case 2:
	return spr_DSM_SMW_lives;
	break
	case 3:
	return spr_DSM_NSMBU_lives;
	break
}


}