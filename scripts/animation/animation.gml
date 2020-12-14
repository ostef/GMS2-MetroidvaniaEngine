/// @func animation(spriteIndex, loopMode, speed);
/// @desc Create an animation object
/// @arg {int} spriteIndex
/// @arg {AnimationLoopMode} loopMode
/// @arg {real} speed
function animation(argument0, argument1, argument2) {
	var spriteIndex = argument0;
	var loopMode = argument1;
	var spd = argument2;

	enum Animation
	{
		SpriteIndex,
		LoopMode,
		Speed,
		FrameEvents
	}

	// Initialize the frame events array
	var frameEvents = array_create(sprite_get_number(spriteIndex));

	for (var i = 0; i < array_length_1d(frameEvents); i++)
	{
		frameEvents[i] = ds_list_create();
	}

	return [spriteIndex, loopMode, spd, frameEvents];



}
