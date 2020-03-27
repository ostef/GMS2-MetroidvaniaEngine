/// @func animation_add(name, spriteIndex, loopMode, speed)
/// @desc Add an animation to this object's animation system. Returns the animation index
/// @arg {int} spriteIndex
/// @arg {AnimationLoopMode} loopMode
/// @arg {real} speed
var spriteIndex = argument0;
var loopMode = argument1;
var spd = argument2;

ds_list_add(animationList, animation(spriteIndex, loopMode, spd));

return ds_list_size(animationList) - 1;
