var obj1 = argument0;
var obj2 = argument1;

// vector from obj1 to obj2
var dx = obj2.phy_com_x - obj1.phy_com_x
var dy = (obj2.phy_com_y - obj1.phy_com_y)

var obj1projvel = dot_product(obj1.phy_linear_velocity_x, obj1.phy_linear_velocity_y, dx, dy);
var obj2projvel = dot_product(obj2.phy_linear_velocity_x, obj2.phy_linear_velocity_y, dx, dy);

var vel = obj1projvel - obj2projvel;

return abs(vel);
