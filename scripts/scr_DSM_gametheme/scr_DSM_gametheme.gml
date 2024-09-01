// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_DSM_gametheme(argument0){
switch global.dsm_entorno[argument0]
    {
	
        case "ground":
            return 0
            break
        case "underground":
            return 1
            break
        case "castle":
            return 2
            break
        case "underwater":
            return 3
            break
        case "ghost":
            return 4
            break
        case "airship":
            return 5
            break
        case "forest":
            return 6
            break
        case "sky":
            return 7
            break
        case "desert":
            return 8
            break
        case "snow":
            return 9
            break
        case "fall":
            return 10
            break
        case "beach":
            return 11
            break
        case "mountain":
            return 12
            break
    }
}