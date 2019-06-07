/// @description Insert description here
// You can write your code in this editor

total_time = 3 * 60;
timer = total_time + 3;

audio_play_sound(snd_countdown, 0, false);

alarm[0] = (total_time - 30 + 3) * 60;
alarm[1] = 3 * 60;
alarm[2] = (total_time + 3) * 60;

running = true;

