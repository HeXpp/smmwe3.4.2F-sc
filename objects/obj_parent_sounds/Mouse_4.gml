if (obj_levelmanager.editor == 1 && global.resource_create == 0 && obj_editormanager.expand_open == 0 && object_index != obj_resource_empty && obj_levelmanager.editor_sonidos == 1 && instance_exists(obj_cursor) && obj_cursor.dont_move == 0 && (!instance_exists(obj_edit_menu)))
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 0)
        {
            if (obj_parent_resource.alarm[0] == -1 && alarm[0] == -1)
            {
                audio_play_sound(snd_ground_bomb, 0, false)
                xx = (x - mouse_x)
                yy = (y - mouse_y)
                with (obj_creation_preview)
                {
                    xx = other.xx
                    yy = other.yy
                }
                x_start = x
                y_start = y
                global.resource_block = 1
                drag = 1
                obj_cursor.move = 1
                ventana = 1
                global.cursor = 1
                with (obj_cursor)
                    event_user(0)
                if (!instance_exists(obj_effect_touch))
                    instance_create(mouse_x, mouse_y, obj_effect_touch)
                global.resource_move = object_index
                alarm[0] = 1
            }
        }
    }
}
