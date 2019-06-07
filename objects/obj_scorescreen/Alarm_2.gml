/// @description Kill kill objects
// You can write your code in this editor
var inst = ds_list_find_value(ds_kills, kill_index);
with(inst) {
	event_user(0);	
}

if kill_index < obj_scores.kills {
	alarm[2] = 7;
	audio_sound_pitch(snd_gunshot, random_range(0.95, 1.05))
	kill_index++;
}
else {
	alarm[0] = 40;	
}