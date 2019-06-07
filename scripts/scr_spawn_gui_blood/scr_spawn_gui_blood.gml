
for (var i = 0; i < argument0; i++) {
    // Spawn blood within an 8x8 square around the mouse cursor
    var inst = instance_create_layer(argument1 + random_range(-8, 8), argument2 + random_range(-8, 8), "gibs", obj_blood);
	inst.screen = true;
}