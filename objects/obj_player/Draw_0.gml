/// @description Insert description here
// You can write your code in this editor



for (var i = 0; i < image_number; i++) 
{
draw_sprite_ext(sprite_index, i, x, y - i, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
//draw_sprite(spr_player_mask, 0, x, y)


//todo
var xSpread = 4;
var ySpread = 5;

if (_skidding) {
	surface_set_target(obj_tiretracks.surf);
	draw_sprite_ext(spr_tiretrack, 0, x + (xSpread * dcos(phy_rotation)), y + (ySpread * dsin(phy_rotation)), 1, 1, -phy_rotation, c_white, 1);
	draw_sprite_ext(spr_tiretrack, 0, x + (xSpread * dcos(phy_rotation)), y + (-ySpread * dsin(phy_rotation)), 1, 1, -phy_rotation, c_white, 1);
	draw_sprite_ext(spr_tiretrack, 0, x + (-xSpread * dcos(phy_rotation)), y + (ySpread * dsin(phy_rotation)), 1, 1, -phy_rotation, c_white, 1);
	draw_sprite_ext(spr_tiretrack, 0, x + (-xSpread * dcos(phy_rotation)), y + (-ySpread * dsin(phy_rotation)), 1, 1, -phy_rotation, c_white, 1);
	surface_reset_target();
}

//physics_draw_debug();



//draw_line(x, y, x + forward_vel_x, y + forward_vel_y);
//draw_line(x, y, x + perp_vel_x, y + perp_vel_y);