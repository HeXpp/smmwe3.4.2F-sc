var _like, etiq, cal;
var scale_x;
if scale = 1
	scale_x = 0
else
	scale_x = 2
var record_x;
if record < 10
	record_x = 112
else
	record_x = 110
draw_sprite_ext(sprite_index, image_index, x, y, scale/2, 0.5, 0, c_white, 1)
draw_set_font(global.font_google)
draw_set_color(c_color)
draw_text((x - 94), (y - 1), string_hash_to_newline(name))
draw_set_color(c_white)
draw_set_color(c_color)
draw_text_transformed(x+100, y-1, "Record",1,1,0)
draw_text((x + record_x), (y + 12), string_hash_to_newline(record))
draw_set_font(global.numbers_lives)
draw_set_color(c_white)
if position < 10
draw_text_transformed(x-124.5-scale_x, y+7, string(position),0.5,0.5,0)
else if position >= 10 and position < 20
draw_text_transformed(x-130-scale_x, y+7, string(position),0.5,0.5,0)
else if position >= 100
draw_text_transformed(x-134-scale_x, y+7, string(position),0.5,0.5,0)
else
draw_text_transformed(x-128.5-scale_x, y+7, string(position),0.5,0.5,0)