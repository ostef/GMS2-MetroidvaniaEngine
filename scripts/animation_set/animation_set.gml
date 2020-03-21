/// @func animation_set(animationName)
/// @desc Set the current animation
/// @arg {string} animationName
var name = argument0;

// Sanity check
if (!ds_map_exists(animationMap, name))
{
	instance_log_error("ANIMATION: Animation " + name + " does not exist");

	return;
}

if (animationName != name)
{
	animationData = animationMap[? name];
	animationName = name;
	animationSprite = animationData[0];
	sprite_index = animationSprite;
	animationLoopMode = animationData[1]
	animationSpeed = animationData[2];
	animationFrameEvents = animationData[3];
	animationFrame = animationSpeed > 0 ? 0 : image_number - 1;
	image_index = animationFrame;
	animationFrameCount = image_number;
}
