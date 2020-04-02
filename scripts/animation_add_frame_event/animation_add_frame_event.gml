/// @func animation_add_frame_event(animIndex, frameIndex, script)
/// @arg {int} animIndex
/// @arg {int} frameIndex
/// @arg {script} script
var animIndex = argument0;
var frameIndex = argument1;
var script = argument2;

// Sanity checks
if (!animation_exists(animIndex))
{
	instance_log_error("ANIMATION: Animation with index " + string(animIndex) + " does not exist");

	return;
}

var anim = animationList[| animIndex];

if (frameIndex < 0 || frameIndex >= sprite_get_number(anim[Animation.SpriteIndex]))
{
	instance_log_error("ANIMATION: Frame index outside of range");
	
	return;
}

if (!script_exists(script))
{
	instance_log_error("ANIMATION: Script " + string(script) + " does not exist!");
	
	return;
}

var frameEvents = anim[Animation.FrameEvents];
ds_list_add(frameEvents[frameIndex], script);
