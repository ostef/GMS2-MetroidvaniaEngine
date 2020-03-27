/// @func animation_set(animIndex)
/// @desc Set the current animation without stopping the current sequence and checking if the animation is already playing
/// @arg {int} animIndex
var animIndex = argument0;

var animationData = animationList[| animIndex]
animationIndex = animIndex;
animationSprite = animationData[Animation.SpriteIndex];
sprite_index = animationSprite;
animationLoopMode = animationData[Animation.LoopMode]
animationSpeed = animationData[Animation.Speed];
animationFrameEvents = animationData[Animation.FrameEvents];
animationFrame = animationSpeed > 0 ? 0 : image_number - 1;
image_index = animationFrame;
animationFrameCount = image_number;
