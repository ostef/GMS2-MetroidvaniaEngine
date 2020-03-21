/// @func animation_system_cleanup()
/// @desc Clean up the animation system
for (var i = 0; i < ds_list_size(animationList); i++)
{
	var data = animationList[| i];
	var frameEvents = data[ANIM_FRAME_EVENTS];
	
	// Clear the frame events array
	for (var i = 0; i < array_length_1d(frameEvents); i++)
	{
		ds_list_destroy(frameEvents[i]);
	}
}

// Destroy the animation map
ds_list_destroy(animationList);
