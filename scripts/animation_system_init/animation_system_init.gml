/// @func animation_system_init()
/// @desc Initialize the animation system for an object
animationList = ds_list_create();
animationSequenceList = ds_list_create();
animationIndex = noone;
animationSprite = noone;
animationLoopMode = 0;
animationSpeed = 0;
animationFrameEvents = undefined;
animationFrame = 0;
animationFrameCount = 0;
bAnimationEnded = false;

animationSequenceIndex = noone;
animationSequenceStep = 0;
bAnimationSequenceEnded = false;

// Reset the built-in animation variables
image_speed = 0;
