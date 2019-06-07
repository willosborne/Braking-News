/// @description Insert description here
// You can write your code in this editor
draw_set_font(obj_resources.pixel_font)
draw_set_color(c_white);
draw_text(10, 10, "$" + string(obj_scores.money))
draw_set_color(c_red);
draw_text(10, 40, "$" + string(obj_scores.breakages))

draw_set_color(c_white);
if (timer <= total_time && timer >= 0)
	draw_text(980, 10, "Time left: " + string(timer) + "s")