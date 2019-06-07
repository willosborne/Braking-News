/// @description Insert description here
// You can write your code in this editor
//var dx = abs(other.phy_linear_velocity_x - phy_linear_velocity_x);
//var dy = abs(other.phy_linear_velocity_y - phy_linear_velocity_y);

//var crash = point_distance(0, 0, dx, dy);
var crash = phy_speed;

if _crash_timer <= 0 {
	if (crash > _large_threshold) {
		audio_play_sound(choose(snd_large_crash_1, snd_large_crash_2), 0, false);	
		_crash_timer = _crash_limit;
	}
	else if (crash > _med_threshold) {
		audio_play_sound(choose(snd_med_crash_1, 
								snd_med_crash_2,
								snd_med_crash_3,
								snd_med_crash_4), 1, false);
		_crash_timer = _crash_limit;
	}
	else if (crash > _small_threshold) {
		audio_play_sound(choose(snd_small_crash_1, snd_small_crash_2), 0, false);	
		_crash_timer = _crash_limit * 3;
	}
	//_crash_timer = _crash_limit;
}