/// @description Insert description here
// You can write your coe in this editor



draw_set_font(obj_resources.pixel_font_large)
draw_set_color(c_white);
draw_text(sx, 30, "Game over!");

draw_set_font(obj_resources.pixel_font)

if (stage >= 1) {
	draw_text(sx, sy + 70, "You earned: $" + string(temp_money));
}
//draw_text(sx + 60, 70, obj_scores.money);

if (stage >= 2) {
	draw_text(sx, sy + 110, "You were fined: $" + string(temp_breakages));
//draw_text(sx, 100, obj_scores.breakages);
}

if (stage >= 3) {
	draw_text(sx, sy + 150, "Kills:");
}

if (stage >= 4) {
	draw_text(sx, sy + 230, "Total score: $" + string(temp_total));
}

if (stage >= 5) {
	draw_text(sx, sy + 330, "Press Enter to restart!");
}
//draw_text(50, 70, obj_control.breakages);