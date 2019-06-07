/// @description Insert description here
// You can write your code in this editor

/// STEP EVENT ///

// Thin out the blood as it spreads
image_xscale -= sizeChange;
image_yscale  = image_xscale;

// I also decided to fade the blood out by a random percentage as it spreads
// These values seemed to feel right
if (movSpd > 0)
    image_alpha -= random_range(0.05, 0.1);

// Slow down the blood with friction
movSpd = scr_approach(movSpd, 0, fric);

// I decided to draw the blood to the surface here
// This isn't really necessary, you could put this somewhere else
if (instance_exists(obj_tiretracks)) {
    surface_set_target(obj_tiretracks.surf);
    draw_sprite_ext(spr_blood, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    surface_reset_target();  
}

// Once the blood thins away to nothing, destroy it
// Destroy self
if (image_xscale <= 0)
    instance_destroy();