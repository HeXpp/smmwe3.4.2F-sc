///Sets the Walk animations
function scr_NSMBU_walk(argument0) {
	/*if global.jugador = 0{*/
	if (argument0 == 1) {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim_walk;
	        case cs_big: return spr_NSMBU_mario_big_swim_walk;
	        case cs_fire: return spr_NSMBU_mario_fire_swim_walk;
	        case cs_helice: return spr_NSMBU_mario_helice_swim_walk;
	        case cs_arcon: return spr_NSMBU_mario_arcon_swim_walk;
	        case cs_penguin: return spr_NSMBU_mario_penguin_swim;}}
	else {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_walk;
	        case cs_big: return spr_NSMBU_mario_big_walk;
	        case cs_fire: return spr_NSMBU_mario_fire_walk;
	        case cs_helice: return spr_NSMBU_mario_helice_walk;
	        case cs_arcon: return spr_NSMBU_mario_arcon_walk;
	        case cs_penguin: return spr_NSMBU_mario_penguin_walk; }}
	/*}
	else{
	if (argument0 == 1) {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim_walk;
	        case cs_big: return spr_NSMBU_mario_big_swim_walk;
	        case cs_fire: return spr_NSMBU_mario_fire_swim_walk;
	        case cs_helice: return spr_NSMBU_mario_helice_swim_walk;
	        case cs_arcon: return spr_NSMBU_mario_arcon_swim_walk;
	        case cs_penguin: return spr_NSMBU_mario_penguin_swim;}}
	else {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_walk;
	        case cs_big: return spr_NSMBU_mario_big_walk;
	        case cs_fire: return spr_NSMBU_mario_fire_walk;
	        case cs_helice: return spr_NSMBU_mario_helice_walk;
	        case cs_arcon: return spr_NSMBU_mario_arcon_walk;
	        case cs_penguin: return spr_NSMBU_mario_penguin_walk; }}
	}*/

}
