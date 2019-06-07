/// @description Insert description here
// You can write your code in this editor

_move_speed = 200



input_disabled = true;
paused = false;

_turn_speed = 150
_direction = 0

_throw_speed = 200;


_accel = 25;
_steer_speed = 2.5;

_constantaccel = true

_skidding = false;

//draw_enable_drawevent(false);
_crash_timer = 0;
_crash_limit = 0.2;

_small_threshold = 0.1;
_med_threshold = 1;
_large_threshold = 2.5;

_fire_timer = 0;
_fire_delay = 0.5;

_spin_punt_force = 7;

audio_play_sound(snd_engine, 0, true)
audio_play_sound(snd_startup, 0, false);