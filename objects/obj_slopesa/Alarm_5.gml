if (collision_point(x, (y - 8), obj_ground, 0, 1) || collision_point(x, (y - 8), obj_decoracion_1, 0, 1) || collision_point(x, (y - 8), obj_decoracion_2, 0, 1) || collision_point(x, (y - 8), obj_decoracion_3, 0, 1) || collision_point(x, (y - 8), obj_decoracion_4, 0, 1) || collision_point((x - 8), (y - 8), obj_decoracion_4, 0, 1) || collision_point((x + 24), (y - 8), obj_decoracion_4, 0, 1))
{
    alarm[2] = -1
    exit
}