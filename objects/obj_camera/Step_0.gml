/// @description Insert description here
// You can write your code in this editor

if (follow != noone){
	x = lerp(x, obj_player.x, 0.15);
	y = lerp(y, obj_player.y, 0.15);
	
	//var cam_w = camera_get_view_width(_camera)
	var cam_w = 320;
	var cam_ww = cam_w * 0.5;

	x = clamp(x, cam_ww, room_width - cam_ww)
	
	var cam_h = camera_get_view_height(_camera)
	cam_h = 180;
	var cam_hh = cam_h * 0.5;

	y = clamp(y, cam_hh, room_height - cam_hh)

	
	var dx = 0;
	var dy = 0;
	
	if (_shake) {
		dx = random_range(-_shake_intensity, _shake_intensity);
		dy = random_range(-_shake_intensity, _shake_intensity);
		_shake_timer -= delta();
		if _shake_timer <= 0 {
			_shake = false;	
		}
	}
	
	var vm = matrix_build_lookat(x + dx, y + dy, -10, x + dx, y + dy, 0, 0, 1, 0)
	camera_set_view_mat(_camera, vm);
}

