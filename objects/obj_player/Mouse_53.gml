/// @description Insert description here
// You can write your code in this editor


if (_fire_timer <= 0) {
	
	var dir;
	dir = point_direction(x, y, mouse_x, mouse_y);
	var paper = instance_create_layer(x + lengthdir_x(20, dir),
									  y + lengthdir_y(20, dir),
									  "Instances",
									  obj_newspaper);
	paper.dir = dir;


	with paper {
		physics_apply_local_impulse(0, 0, 
									lengthdir_x(other._throw_speed, dir), 
									lengthdir_y(other._throw_speed, dir));
	}
	audio_play_sound(snd_shotgun, 0, false);
	_fire_timer = _fire_delay;
	scr_shake(0.2);
}
//paper.vX = lengthdir_x(_throw_speed, dir);
//paper.vY = lengthdir_y(_throw_speed, dir);
