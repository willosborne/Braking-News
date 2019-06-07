/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_color(text_colour);
draw_set_font(text_font);

var off = pressed ? 2 : 0

draw_text_transformed(x + 7, y + off - 3, button_text, image_xscale, image_yscale, 0);