/// @func animation_play(animIndex)
/// @desc Set the current animation
/// @arg {int} animIndex
var animIndex = argument0;

// Sanity check
if (!animation_exists(animIndex))
{
	instance_log_error("ANIMATION: Animation with index " + string(animIndex) + " does not exist");

	return;
}

if (animIndex != animationIndex)
{
	var animationData = animationList[| animIndex]
	animationIndex = animIndex;
	animationSprite = animationData[0];
	sprite_index = animationSprite;
	animationLoopMode = animationData[1]
	animationSpeed = animationData[2];
	animationFrameEvents = animationData[3];
	animationFrame = animationSpeed > 0 ? 0 : image_number - 1;
	image_index = animationFrame;
	animationFrameCount = image_number;
	
	animation_sequence_stop();
}
