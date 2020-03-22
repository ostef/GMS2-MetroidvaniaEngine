/// @func animation_set(animIndex)
/// @desc Set the current animation without stopping the current sequence and checking if the animation is already playing
/// @arg {int} animIndex
var animIndex = argument0;

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
