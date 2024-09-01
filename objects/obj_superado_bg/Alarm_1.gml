    var levelname = string_copy(global.levelguardabot, 1, (string_length(global.levelguardabot) - 4))
    var leveldescription = global.desc
    var level = scr_verify_pub((global.directorio + global.levelguardabot))
    var etiquetas = ((global.tag1_pub + ",") + global.tag2_pub)
    var apa = string(global.apariencia)
	var modo_noche = global.modo_noche
    switch global.bg_level
    {
        case "underground":
            var entorno = "1"
            break
        case "castle":
            entorno = "2"
            break
        case "underwater":
            entorno = "3"
            break
        case "ghost":
            entorno = "4"
            break
        case "airship":
            entorno = "5"
            break
        case "forest":
            entorno = "6"
            break
        case "sky":
            entorno = "7"
            break
        case "desert":
            entorno = "8"
            break
        case "snow":
            entorno = "9"
            break
        case "fall":
            entorno = "10"
            break
        case "beach":
            entorno = "11"
            break
		case "mountain":
		if modo_noche = 0
            entorno = "12"
		else
			entorno = "13"
            break
        default:
            entorno = "0"
    }

	var _str = "token=" + global.token +
	           "&discord_id=" + global.my2 +
	           "&auth_code=" + global.my5 +
	           "&name=" + levelname +
	           "&desc=" + leveldescription +
	           "&aparience=" + apa +
	           "&entorno=" + entorno +
	           "&tags=" + etiquetas +
	           "&swe=" + level;
    url = http_post_string((global.api_url + "stage/upload"), _str)
    alarm[2] = 2400


