/// @desc Execute movement state and update shake
state_machine_execute();

// Apply shake
xOffset = translationalShake * random_range(-1, 1);
yOffset = translationalShake * random_range(-1, 1);
rotation = rotationalShake * random_range(-1, 1);

translationalShake = lerp(translationalShake, 0, .1);
rotationalShake = lerp(rotationalShake, 0, .1);

// Update position and angle
camera_set_view_pos(camera, x + xOffset - floor(width / 2), y + yOffset - floor(height / 2));
camera_set_view_angle(camera, rotation);
