draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
draw_set_color(c_white)
draw_set_font(global.numbers_lives)
draw_set_color(c_white)
if global.difficultyd = 0
	var recorde = record0
else if global.difficultyd = 1
	var recorde = record1
else if global.difficultyd = 2
	var recorde = record2
	else if global.difficultyd = 3
	var recorde = record3
if room == rm_DSM
	var pos = 42
else
	var pos = 0
draw_text_transformed(340, 16+pos, string(recorde),0.3,0.3,0)
draw_set_font(global.font_google)
draw_text_transformed(x + 12, (y+1), "Record",1,1,0)