/// @func animation_system_cleanup()
/// @desc Clean up the animation system
ds_list_destroy(animationSequenceList);

for (var i = 0; i < ds_list_size(animationList); i++)
{
	var data = animationList[| i];
	var frameEvents = data[Animation.FrameEvents];
	
	// Clear the frame events array
	for (var j = 0; j < array_length_1d(frameEvents); j++)
	{
		ds_list_destroy(frameEvents[j]);
	}
}

// Destroy the animation map
ds_list_destroy(animationList);
