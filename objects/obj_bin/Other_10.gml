/// @description spawn trash

audio_play_sound(snd_bin_crash, 0, false);

repeat (5) {
	var vx = random(1) * obj_player.phy_linear_velocity_x * 4;	
	var vy = random(1) * obj_player.phy_linear_velocity_y * 4;
	
	var trash = instance_create_layer(x, y, "gibs", obj_trash);
	trash.vX = vx;
	trash.vY = vy;
	
}