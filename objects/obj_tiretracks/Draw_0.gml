/// @description Insert description here
// You can write your code in this editor
if (!screen) {
	if (surface_exists(surf)) {
		draw_surface(surf, 0, 0);	
	}
	else {
		surf = surface_create(w, h);	
	}
}