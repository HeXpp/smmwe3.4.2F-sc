with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.bocina = 0
instance_create(x, y, obj_bocina_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_cerdito_snd_res)
        {
            obj = obj_bocina_snd_res
            obj_draw = 8
        }
    }
}
instance_destroy()
