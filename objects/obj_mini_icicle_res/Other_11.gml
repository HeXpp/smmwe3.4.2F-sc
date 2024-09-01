with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
switch transform
{
    case 1:
        global.estalactita = 1
        instance_create(x, y, obj_mini_icicle2_res)
        break
    case 2:
        global.estalactita = 2
        instance_create(x, y, obj_icicle_res)
        break
    case 3:
        global.estalactita = 3
        instance_create(x, y, obj_icicle2_res)
        break
}

if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_mini_icicle_res || obj == obj_mini_icicle2_res || obj == obj_icicle_res || obj == obj_icicle2_res)
        {
            switch other.transform
            {
                case 1:
                    obj = obj_mini_icicle2_res
                    obj_draw = 214
                    break
                case 2:
                    obj = obj_icicle_res
                    obj_draw = 138
                    break
                case 3:
                    obj = obj_icicle2_res
                    obj_draw = 139
                    break
            }

        }
    }
}
instance_destroy()
