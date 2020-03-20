/// @func set_animation(spriteIndex, imageIndex, imageSpeed)
/// @arg {int} spriteIndex
/// @arg {int} imageIndex
/// @arg {real} imageSpeed
var spriteIndex = argument0;
var imageIndex = argument1;
var imageSpeed = argument2;

if (sprite_index != spriteIndex)
{
	sprite_index = spriteIndex;
	image_index = imageIndex;
	animationSpeed = imageSpeed;
	image_speed = imageSpeed * time_get_timescale();
}
