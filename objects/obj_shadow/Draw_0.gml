if (global.shadows == 1) and (global.apariencia != 3)
{
if instance_exists(obj_mario_editor)
{
with (obj_parent_resource)
{
	if (visible == true) && (image_alpha == 1)
		scr_shadows_editor()
}
with (obj_mario_editor)
{
	if (visible == true)
		scr_shadow_mario_editor()
}
}
with (obj_mario)
{
    if (visible == true) && (image_alpha == 1)
        scr_shadow_mario()
}
with (obj_deadmario)
{
    if (visible == true)
        scr_shadows()
}
with (obj_powerupparent)
{
    if (visible == true)
        scr_shadows()
}
with (obj_enemyparent)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_enemyparent_held)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_pswitch)
{
    if (visible == true)
        scr_shadows()
}
with (obj_cap_mario)
{
    if (visible == true)
        scr_shadow_cap()
}
with (obj_kuriboshoe)
{
    if (visible == true)
        scr_shadows()
}
with (obj_kuribo_drybones)
{
    if (visible == true)
        scr_shadows()
}
with (obj_blockparent)
{
    if (visible == true)
        scr_shadows()
}
with (obj_pinchos)
{
    if (visible == true)
        scr_shadows()
}
with (obj_tuberia)
{
    if (visible == true)
        scr_shadows()
}
with (obj_shell)
{
    if (visible == true)
        scr_shadows()
}
with (obj_onoffplatform)
{
    if ((visible == true) && (image_index == 1))
        scr_shadows()
}
with (obj_onoffplatform_blue)
{
    if ((visible == true) && (image_index == 1))
        scr_shadows()
}
with (obj_pblock)
{
    if ((visible == true) && (image_index == 0))
        scr_shadows()
}
with (obj_nube)
{
    if (visible == true)
        scr_shadows()
}
with (obj_key)
{
    if (visible == true)
        scr_shadows()
}
with (obj_key_fallow)
{
    if (visible == true)
        scr_shadows()
}
with (obj_cannonball)
{
    if (visible == true)
        scr_shadows()
}
with (obj_onewaygate_right)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_onewaygate_left)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_onewaygate_top)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_onewaygate_bottom)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_bumper)
{
    if (visible == true)
        scr_shadows()
}
with (obj_brohammer)
{
    if (visible == true)
        scr_shadows()
}
with (obj_block_rock)
{
    if (visible == true)
        scr_shadows()
}
with (obj_block_ice)
{
    if (visible == true)
        scr_shadows()
}
with (obj_pink_coin)
{
    if (visible == true)
        scr_shadows()
}
with (obj_coin)
{
    if (visible == true)
        scr_shadows()
}
with (obj_coin10)
{
    if (visible == true)
        scr_shadows()
}
with (obj_yoshi2)
{
    if (visible == true)
        scr_shadow_yoshi()
}
with (obj_yoshi_abandon)
{
    if (visible == true)
        scr_shadow_mario()
}
with (obj_yoshi_red)
{
    if (visible == true)
        scr_shadow_yoshi()
}
with (obj_yoshi_blue)
{
    if (visible == true)
        scr_shadow_yoshi()
}
with (obj_yoshi_runaway)
{
    if (visible == true)
        scr_shadow_mario()
}
with (obj_yoshi_runaway_red)
{
    if (visible == true)
        scr_shadow_mario()
}
with (obj_yoshi_runaway_blue)
{
    if (visible == true)
        scr_shadow_mario()
}
with (obj_yoshifire)
{
    if (visible == true)
        scr_shadows()
}
with (obj_yoshifire_one)
{
    if (visible == true)
        scr_shadows()
}
with (obj_yoshifire_purple)
{
    if (visible == true)
        scr_shadows()
}
with (obj_muncher)
{
    if (visible == true)
        scr_shadow_muncher()
}
with (obj_muncher_b)
{
    if (visible == true)
        scr_shadow_muncher()
}
with (obj_bobomb_ready)
{
    if (visible == true)
        scr_shadows()
}
with (obj_boomboom)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_boomboom_b)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_bowserjr)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_bowserjr_dead_castle)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_SMB_bowser)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_SMB3_bowser)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_SMW_bowser)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_bowser_dead_castle)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_enemy_dead_castle)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_bowser_dead)
{
    if (visible == true)
        scr_shadows()
}
with (obj_soplete_global)
{
    if (visible == true)
        scr_shadows()
}
with (obj_soplete_invert)
{
    if (visible == true)
        scr_shadows()
}
with (obj_soplete_invert_global)
{
    if (visible == true)
        scr_shadows()
}
with (obj_soplete)
{
    if (visible == true) && (invisible == 0)
        scr_shadows()
}
with (obj_clown)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_clown_fire)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_bullebill_base)
{
    if (visible == true)
        scr_shadows()
}
with (obj_bullebill_base_red)
{
    if (visible == true)
        scr_shadows()
}
with (obj_cannon)
{
    if (visible == true)
        scr_shadow_enemies()
}
with (obj_lava_lift)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_lava_lift_part)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_spring)
{
    if (visible == true)
        scr_shadows_spring()		
}
with (obj_spring_land)
{
    if (visible == true)
        scr_shadows_spring()		
}
with (obj_door)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_door_exit)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_door_switch)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_door_switch_exit)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_door_lock)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_door_lock_exit)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_block_pow_hold)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_arrow)
{
    if (visible == true)
        scr_shadow_enemies()	
}
with (obj_claw)
{
    if (visible == true)
        scr_shadows_claw()		
}
with (obj_torbellino)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_icicle)
{
    if (visible == true)
        scr_shadow_enemies()		
}
with (obj_skewer)
{
    if (visible == true)
        scr_shadows()		
}
with (obj_skewertrunk)
{
    if (visible == true)
        scr_shadows_skewer()		
}
with (obj_bouncycloud)
{
    if (visible == true)
        scr_shadow_bouncycloud()		
}
with (obj_doormario)
{
    if (visible == true)
        scr_shadow_mario()		
}
with (obj_doormario_exit)
{
    if (visible == true)
        scr_shadow_mario()		
}
with (obj_deadmario)
{
    if (visible == true)
        scr_shadows()		
}
}

