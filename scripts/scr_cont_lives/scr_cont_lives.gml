// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cont_lives(){
	switch global.apariencia
	{
		case 0: return spr_SMB_cont_lives break;
		case 1: return spr_SMB3_cont_lives break;
		case 2: return spr_cont_lives break;
		case 3: return spr_NSMBU_cont_lives break;
	}
}