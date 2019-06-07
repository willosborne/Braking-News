/// @description Insert description here
// You can write your code in this editor
stage = 0;
alarm[0] = 40;

total = obj_scores.money - obj_scores.breakages;

temp_money = 0;
temp_breakages = 0;
temp_total = 0;


sx = 400;
sy = 200;

kill_x = sx;
kill_y = 0;
temp_kills = 0;

ds_kills = ds_list_create();

inc_speed = 60;

done = false;

var obj = instance_create_layer(x, y, "gibs", obj_tiretracks);

with obj {
	screen = true;
	w = view_wport[0];
	h = view_hport[0];
	surface_free(surf)
	surf = surface_create(w, h);
}
