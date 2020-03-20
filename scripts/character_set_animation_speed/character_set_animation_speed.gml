/// @func character_set_animation_speed(speed)
/// @arg {real} speed
var spd = argument0;

animationSpeed = spd;
image_speed = spd * time_get_timescale();
