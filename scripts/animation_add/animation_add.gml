/// @func animation_add(name, spriteIndex, loopMode, speed)
/// @desc Add an animation to this object's animation system. Returns the animation index
/// @arg {int} spriteIndex
/// @arg {AnimationLoopMode} loopMode
/// @arg {real} speed
var spriteIndex = argument0;
var loopMode = argument1;
var spd = argument2;

// Initialize the frame events array
var frameEvents = array_create(sprite_get_number(spriteIndex));

for (var i = 0; i < array_length_1d(frameEvents); i++)
{
	frameEvents[i] = ds_list_create();
}

ds_list_add(animationList, [spriteIndex, loopMode, spd, frameEvents]);

return ds_list_size(animationList) - 1;
