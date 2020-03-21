/// @func animation_exists(animIndex)
/// @desc Returns true if the animation exists, false if not
/// @arg {int} animIndex
var animIndex = argument0;

return animIndex >= 0 && animIndex < ds_list_size(animationList);
