/// @func animation_system_init()
/// @desc Initialize the animation system for an object
animationMap = ds_map_create();		// Key is the animation name, value is [animation data]
/* Animation data:
 * [0] => sprite_index
 * [1] => animation loop mode
 * [2] => animation speed
 * [3] => [frame events]
 */

animationData = undefined;
animationName = "";
animationSprite = noone;
animationLoopMode = 0;
animationSpeed = 0;
animationFrameEvents = undefined;
animationFrame = 0;
animationFrameCount = 0;
bAnimationEnded = false;

// Reset the built-in animation variables
image_speed = 0;
