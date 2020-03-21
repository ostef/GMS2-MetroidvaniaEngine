/// @func animation_system_update()
/// @desc Update the current animation frame
// Reset built-in animation variables
image_speed = 0;

// Sanity check
if (animationData == undefined)
{
	return;
}

var scaledSpeed = animationSpeed * time_get_timescale();

// Update the sprite_index and image_index
sprite_index = animationSprite;
image_index = floor(animationFrame);
