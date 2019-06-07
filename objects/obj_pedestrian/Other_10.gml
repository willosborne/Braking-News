/// @description Insert description here
// You can write your code in this editor
obj_scores.kills++;

// blood
// Amount of blood
var count = random_range(4, 32);


scr_spawn_blood(count, x, y);


audio_play_sound(choose(snd_oof, snd_scream, snd_scream_2, snd_scream_3), 0, false);
instance_destroy();
