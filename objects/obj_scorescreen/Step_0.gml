/// @description Insert description here
// You can write your code in this editor

if (stage == 1) {
	// count up money
	if !done
		temp_money += inc_speed;
	if (temp_money >= obj_scores.money && !done) {
		temp_money = obj_scores.money;
		
		audio_stop_sound(snd_drumroll);
		audio_play_sound(snd_cash_register, 0, false);
		
		alarm[0] = 40;
		done = true;
	}
}
else if (stage == 2) {
	// count up breakages
	if !done
		temp_breakages += inc_speed;
	if (temp_breakages >= obj_scores.breakages && !done) {
		temp_breakages = obj_scores.breakages;
		
		audio_stop_sound(snd_drumroll);
		audio_play_sound(snd_cash_register, 0, false);
		
		alarm[0] = 40;
		done = true;
	}
}
else if (stage == 3) {
	// count up kills
	if !done {
		kill_x = sx + 100;
		kill_y = sy + 180;
		alarm[1] = 40;
		done = true;
	}
	
}
else if (stage == 4) {
	// count up total
	if !done
		temp_total += inc_speed;
	if (temp_total >= total && !done) {
		temp_total = total;
		alarm[0] = 40;
		
		audio_stop_sound(snd_drumroll);
		audio_play_sound(snd_cash_register, 0, false);		
		
		done = true;
	}	
}