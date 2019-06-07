/// @description Insert description here
// You can write your code in this editor

x += vX * delta();
yy += vY * delta();
height -= vZ;
y = yy + height;

vX *= 0.95;
vY *= 0.95;

if height <= 0 {
	vZ = 0;	
	height = 0;
}