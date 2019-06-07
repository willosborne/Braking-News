/// @description Spawn kill objects
// You can write your code in this editor
kill_x += 15;
if kill_x > view_wport[0] - 100 {
	kill_x = sx + 100;
	kill_y += 20;
}
ds_list_add(ds_kills, instance_create_layer(kill_x, kill_y, "Instances", obj_kill_counter));
audio_play_sound(snd_snare, 0, false);
if temp_kills < obj_scores.kills {
	temp_kills++;
	alarm[1] = 7;	
} else {
	kill_index = 0;
	alarm[2] = 20;
}