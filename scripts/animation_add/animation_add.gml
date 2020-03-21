/// @func animation_add(name, spriteIndex, loopMode, speed)
/// @desc Add an animation to this object's animation system
/// @arg {string} name
/// @arg {int} spriteIndex
/// @arg {AnimationLoopMode} loopMode
/// @arg {real} speed
var name = argument0;
var spriteIndex = argument1;
var loopMode = argument2;
var spd = argument3;

if (ds_map_exists(animationMap, name))
{
	instance_log_error("ANIMATION: Animation " + animationName + " already exists!");
	
	return false;
}

if (!sprite_exists(spriteIndex))
{
	instance_log_error("ANIMATION: Sprite with index " + string(spriteIndex) + " does not exist");
	
	return false;
}

// Initialize the frame events array
var frameEvents = array_create(sprite_get_number(spriteIndex));
for (var i = 0; i < array_length_1d(frameEvents); i++)
{
	frameEvents[i] = ds_list_create();
}

animationMap[? name] = [spriteIndex, loopMode, spd, frameEvents];
instance_log_info("ANIMATION: Created animation " + animationName);

return true;
