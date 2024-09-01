if (obj_nivelesmundiales.active == 1 && obj_nivelesmundiales.loading == 0 && y > 40 and visible = 1)
{
    audio_play_sound(snd_aceptar, 0, false)
    obj_nivelesmundiales.active = 0
    with (obj_nm_card)
        visible = false
    with (instance_create(192, 64, obj_nm_card_expand))
    {
        name = other.name
        likes = other.likes
        downloads = other.downloads
        dislikes = other.dislikes
        intentos = other.intentos
        victorias = other.victorias
        muertes = other.muertes
        apariencia = other.apariencia
		entorno = other.entorno
        etiquetas = other.etiquetas
        date = other.date
        author = other.author
        _id = other._id
        featured = other.featured
        date = other.date
        porcentaje = other.porcentaje
        completed = other.completed
        liked = other.liked
        record_name = other.record_name
        record = other.record
        nrecord = other.nrecord
        archivo = other.archivo
		desc = other.desc
		if !instance_exists(obj_nm_download){
        with (instance_create(143, 188, obj_nm_download))
            file = other.archivo
		}
		if !instance_exists(obj_nm_report)
			instance_create(112, 188, obj_nm_report)
		if !instance_exists(obj_nm_delete){
        if (global.my7 == 1 || global.my3 == 1 || global.my1 == author)
            instance_create(68, 188, obj_nm_delete)
		}
		if !instance_exists(obj_nm_star){
        if (global.my3 == 1 || global.my7 == 1)
        {
            with (instance_create(90, 188, obj_nm_star))
                image_index = real(other.featured)
		}
		}
        
    }
}


