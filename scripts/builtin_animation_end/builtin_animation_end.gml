/// @func builtin_animation_end(spriteIndex)
/// @arg {int} spriteIndex
function builtin_animation_end(argument0) {
	var spriteIndex = argument0;

	return builtin_animation_hit_frame(spriteIndex, sprite_get_number(spriteIndex) - 1);



}
