/// @description Once per frame y'know
// You can write your code in this editor

_crash_timer -= delta();
_fire_timer -= delta();

//if (keyboard_check_pressed(ord("K"))) {
//	_constantaccel = !_constantaccel;	
//}
if (keyboard_check_pressed(ord("O"))) {
	obj_scores.money = 8000;
	obj_scores.breakages = 5000;
	obj_scores.kills = 40;
	end_game();	
	
}
//show_debug_message(phy_speed)


if(keyboard_check_pressed(ord("P"))){
    paused = !paused;
}

if(paused){
    //instance_deactivate_all(1);
	physics_pause_enable(true);
}else{
    //instance_activate_all();
	physics_pause_enable(false);
}

var ad = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if keyboard_check_pressed(vk_enter) {
	room_restart();	
}

if keyboard_check_pressed(vk_escape)
	game_end();

if keyboard_check_pressed(vk_space) && !input_disabled && !paused {
	//var ang =  -90 + random_range(-30, 30);
	//var impulse = 10;	
	physics_apply_angular_impulse(ad == 0 ? _spin_punt_force : _spin_punt_force * ad);
	
}

//_direction += ad * _turn_speed * delta();
//image_angle = _direction - 90;

if (ad != 0) && !input_disabled {
	physics_apply_torque(ad * _steer_speed);
}
image_angle = phy_rotation;

// linear vel: per second
// speed_x etc: per step
// speed: per second

if !input_disabled && (_constantaccel || keyboard_check(ord("W"))) && !paused {
	physics_apply_local_force(0, 0, 0, -_accel);
}


var perp_x = dcos(phy_rotation);
var perp_y = dsin(phy_rotation);

//var forward_x = dcos(phy_rotation);
//var forward_y = dsin(phy_rotation);

// velocity directed along rotation
//var forward_speed = dot_product(forward_x, forward_y, phy_linear_velocity_x, phy_linear_velocity_y);
var perp_speed = dot_product(perp_x, perp_y, phy_linear_velocity_x, phy_linear_velocity_y);

//forward_vel_x = forward_speed * forward_x;
//forward_vel_y = forward_speed * forward_y;
var perp_vel_x = perp_speed * perp_x;
var perp_vel_y = perp_speed * perp_y;

//perp_vel_x = phy_linear_velocity_x - forward_vel_x;
//perp_vel_y = phy_linear_velocity_y - forward_vel_y;


if !paused{
if (point_distance(0, 0, perp_vel_x, perp_vel_y) < 50) {
	if _skidding {
		_skidding = false;
		audio_stop_sound(snd_skid);
	}
	
	physics_apply_force(phy_com_x, phy_com_y, -perp_vel_x, -perp_vel_y);
}
else 
{
	if !_skidding {
		_skidding = true;
		audio_play_sound(snd_skid, 0, true);
	}
	physics_apply_force(phy_com_x, phy_com_y, -perp_vel_x * 0.2, -perp_vel_y * 0.2);
}
}


// pitch range is 0 - 5
var speedRatio = phy_speed / 3;
audio_sound_pitch(snd_engine, speedRatio * 2)