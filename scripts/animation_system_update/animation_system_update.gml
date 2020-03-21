/// @func animation_system_update()
/// @desc Update the current animation frame
// Reset built-in animation variables
image_speed = 0;
// Reset flags
bAnimationEnded = false;

// Sanity check
if (animationData == undefined)
{
	return;
}

// Take into account the original sprite speed and the timescale
var previousFrame = floor(animationFrame);
var actualSpeed = sprite_get_speed(animationSprite) / game_get_speed(gamespeed_fps) * animationSpeed * time_get_timescale();
animationFrame += actualSpeed;

// Handle animation looping
if (floor(animationFrame) > animationFrameCount - 1 || animationFrame < 0)
{
	switch (animationLoopMode)
	{
		case AnimationLoopMode.Stop:
			animationFrame = animationSpeed < 0 ? 0 : animationFrameCount - 1;
			animationSpeed = 0;
			
			break;
			
		case AnimationLoopMode.Loop:
			animationFrame = animationSpeed > 0 ? 0 : animationFrameCount - 1;
			
			break;
			
		case AnimationLoopMode.PingPong:
			animationFrame = animationSpeed < 0 ? clamp(1, 0, animationFrameCount) : animationFrameCount - 1;
			animationSpeed = -animationSpeed;
			
			break;
	}
	
	bAnimationEnded = true;
}

// Handle frame events
if (floor(animationFrame) != previousFrame)
{
	// Call the event scripts
	var frameEvents = animationFrameEvents[floor(animationFrame)];
	
	// Execute the scripts
	for (var i = 0; i < ds_list_size(frameEvents); i++)
	{
		var script = frameEvents[| i];
		script_execute(script);
	}
}


// Update the sprite_index and image_index
sprite_index = animationSprite;
image_index = floor(animationFrame);
