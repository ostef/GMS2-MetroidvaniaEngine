/// @func builtin_animation_hit_frame(spriteIndex, frameIndex)
/// @arg {int} spriteIndex
/// @arg {int} frameIndex
function builtin_animation_hit_frame(argument0, argument1) {
	var spriteIndex = argument0;
	var frameIndex = argument1;

	return sprite_index == spriteIndex && (image_index >= frameIndex + 1 - image_speed) && (image_index < frameIndex + 1);



}
