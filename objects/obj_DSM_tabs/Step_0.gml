image_index = global.difficultyd;
c_colors = (global.difficultyd == 0) ? c_button : c_white;
with (id) {
    if (global.difficultyd == value) {
        sprite_index = spr_DSM_buttons_hover;
    } else {
        sprite_index = spr_DSM_buttons;
    }
}