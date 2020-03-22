/// @func animation_sequence_add(animIndex0, animIndex1, ...)
/// @desc Create an animation sequence. Returns the animation sequence index
/// @arg {variadic} animIndex
var animationIndices = array_create(argument_count);

for (var i = 0; i < argument_count; i++)
{
	animationIndices[i] = argument[i];
}

ds_list_add(animationSequenceList, animationIndices);

return ds_list_size(animationSequenceList) - 1;
