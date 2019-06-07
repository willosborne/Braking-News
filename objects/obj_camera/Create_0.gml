/// @description Insert description here
// You can write your code in this editor

_camera = camera_create();

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0)
var pm= matrix_build_projection_ortho(320, 180, 1, 10000);

camera_set_view_mat(_camera, vm);
camera_set_proj_mat(_camera, pm);

view_camera[0] = _camera;

follow = obj_player;

_shake = false;
_shake_intensity = 3;
_shake_timer = 0;