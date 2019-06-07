/// @description Insert description here
// You can write your code in this editor



if (hopping) {
	phy_position_x = lerp(phy_position_x, dest_x, 0.1);
	yy = lerp(yy, dest_y, 0.1);
	height += vZ;
	vZ += grav;
	phy_position_y = yy + height;
	
	if height == 0 {
		hopping = false;	
	}
}
else {
	if irandom(100) > 97 {
		
		hopping = true;
		dest_x = phy_position_x + irandom_range(-10, 10);
		dest_y = phy_position_y + irandom_range(-10, 10);
		vZ = -5;
		yy = phy_position_y;
	}
}